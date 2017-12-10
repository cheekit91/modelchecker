/*
 *	SEARCH.C
 *	Tom Kerrigan's Simple Chess Program (TSCP)
 *
 *	Copyright 1997 Tom Kerrigan
 */


#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>
#include <string.h>
#include "defs.h"
#include "data.h"
#include "protos.h"

/* see the beginning of think() */
#include <setjmp.h>
jmp_buf env;
BOOL stop_search;

const char* FILE_DIR = "C:\\Users\\cheekit\\Desktop\\tree.csv";
FILE *pFile;

/* think() calls search() iteratively. Search statistics
   are printed depending on the value of output:
   0 = no output
   1 = normal output
   2 = xboard format output */

void think(int output)
{
	pFile = fopen(FILE_DIR, "w");
	if (pFile == NULL)
	{
		printf("Error opening file!");
	}
	else
	{
		printf("Success!");
	}

	int i, j, x;

	/* try the opening book first */
	pv[0][0].u = book_move();
	if (pv[0][0].u != -1)
		return;

	/* some code that lets us longjmp back here and return
	   from think() when our time is up */
	stop_search = FALSE;
	setjmp(env);
	if (stop_search) {
		
		/* make sure to take back the line we were searching */
		while (ply)
			takeback();
		return;
	}

	start_time = get_ms();
	stop_time = start_time + max_time;

	ply = 0;
	nodes = 0;

	memset(pv, 0, sizeof(pv));
	memset(history, 0, sizeof(history));
	TrackState tracker;
	tracker.count[0] = 0;
	tracker.count[1] = 0;
	tracker.count[2] = 0;
	if (output == 1)
		printf("ply      nodes  score  pv\n");
	for (i = 1; i <= max_depth; ++i) {
		follow_pv = TRUE;
		//printf("depth %d", i);
		fprintf(pFile, "depth %d\n", i);
		x = search(-10000, 10000, i, tracker);
		if (output == 1)
			printf("%3d  %9d  %5d ", i, nodes, x);
		else if (output == 2)
			printf("%d %d %d %d",
					i, x, (get_ms() - start_time) / 10, nodes);
		if (output) {
			for (j = 0; j < pv_length[0]; ++j)
				printf(" %s", move_str(pv[0][j].b));
			printf("\n");
			fflush(stdout);
		}
		if (x > 9000 || x < -9000)
			break;
	}
}


/* search() does just that, in negamax fashion */

int search(int alpha, int beta, int depth, TrackState tracker)
{
	int i, j, x;
	BOOL c, f;

	fprintf(pFile, "level,%d\n", depth);
	/* we're as deep as we want to be; call quiesce() to get
	   a reasonable score and return it. */
	if (!depth)
		return quiesce(alpha,beta, tracker);
	++nodes;

	/* do some housekeeping every 1024 nodes */
	if ((nodes & 1023) == 0)
		checkup();

	pv_length[ply] = ply;

	/* if this isn't the root of the search tree (where we have
	   to pick a move and can't simply return 0) then check to
	   see if the position is a repeat. if so, we can assume that
	   this line is a draw and return 0. */
	if (ply && reps())
		return 0;

	/* are we too deep? */
	if (ply >= MAX_PLY - 1)
	{
		fprintf(pFile, "skipped due to too deep\n");
		return eval();
	}
	if (hply >= HIST_STACK - 1)
	{
		fprintf(pFile, "skipped due to history stack\n");
		return eval();
	}
	/* are we in check? if so, we want to search deeper */
	c = in_check(side);
	if (c)
		++depth;
	gen();
	if (follow_pv)  /* are we following the PV? */
		sort_pv();
	f = FALSE;

	/* loop through the moves */
	for (i = first_move[ply]; i < first_move[ply + 1]; ++i) {
		sort(i);
		if (!makemove(gen_dat[i].m.b)) {
			continue;
		}
		f = TRUE;
		tracker.count[depth] += 1;
		fprintf(pFile, "moving through depth %d\n", depth);
		x = -search(-beta, -alpha, depth - 1, tracker);
		takeback();
		if (x > alpha) {

			/* this move caused a cutoff, so increase the history
			   value so it gets ordered high next time we can
			   search it */
			history[(int)gen_dat[i].m.b.from][(int)gen_dat[i].m.b.to] += depth;
			if (x >= beta)
			{
				fprintf(pFile, "Return Beta,%d,%d,%d,%d,%d,%d\n", tracker.count[2], tracker.count[1], tracker.count[0], x, alpha, beta);
				return beta;
			}
			alpha = x;

			/* update the PV */
			pv[ply][ply] = gen_dat[i].m;
			for (j = ply + 1; j < pv_length[ply + 1]; ++j)
				pv[ply][j] = pv[ply + 1][j];
			pv_length[ply] = pv_length[ply + 1];
		}
		//fprintf(pFile, "Looping move,%d,%d,%d\n", x, alpha, beta);
	}

	/* no legal moves? then we're in checkmate or stalemate */
	if (!f) {
		if (c)
			return -10000 + ply;
		else
			return 0;
	}

	/* fifty move draw rule */
	if (fifty >= 100)
		return 0;
	fprintf(pFile, "Return Alpha,%d,%d,%d,%d,%d,%d\n", tracker.count[2], tracker.count[1], tracker.count[0], x, alpha, beta);
	return alpha;
}


/* quiesce() is a recursive minimax search function with
   alpha-beta cutoffs. In other words, negamax. It basically
   only searches capture sequences and allows the evaluation
   function to cut the search off (and set alpha). The idea
   is to find a position where there isn't a lot going on
   so the static evaluation function will work. */

int quiesce(int alpha,int beta, TrackState tracker)
{
	int i, j, x;

	++nodes;

	fprintf(pFile, "qlevel\n");
	/* do some housekeeping every 1024 nodes */
	if ((nodes & 1023) == 0)
		checkup();

	pv_length[ply] = ply;

	/* are we too deep? */
	if (ply >= MAX_PLY - 1)
	{
		fprintf(pFile, "skipped due to too deep\n");
		return eval();
	}
	if (hply >= HIST_STACK - 1)
	{
		fprintf(pFile, "skipped due to history stack\n");
		return eval();
	}

	/* check with the evaluation function */
	x = eval();
	if (x >= beta)
	{
		fprintf(pFile, "Return Beta,%d,%d,%d,%d,%d,%d\n", tracker.count[2], tracker.count[1], tracker.count[0], x, alpha, beta);
		return beta;
	}
	if (x > alpha)
		alpha = x;

	gen_caps();
	if (follow_pv)  /* are we following the PV? */
		sort_pv();

	/* loop through the moves */
	for (i = first_move[ply]; i < first_move[ply + 1]; ++i) {
		sort(i);
		if (!makemove(gen_dat[i].m.b))
			continue;

		fprintf(pFile, "moving through quiesce\n");
		tracker.count[0] += 1;
		x = -quiesce(-beta, -alpha, tracker);
		takeback();
		if (x > alpha) {
			if (x >= beta)
			{
				fprintf(pFile, "Return Beta,%d,%d,%d,%d,%d,%d\n", tracker.count[2], tracker.count[1], tracker.count[0], x, alpha, beta);
				return beta;
			}
			alpha = x;

			/* update the PV */
			pv[ply][ply] = gen_dat[i].m;
			for (j = ply + 1; j < pv_length[ply + 1]; ++j)
				pv[ply][j] = pv[ply + 1][j];
			pv_length[ply] = pv_length[ply + 1];
		}
		//fprintf(pFile, "Looping move,%d,%d,%d\n", x, alpha, beta);
	}
	fprintf(pFile, "Return Alpha,%d,%d,%d,%d,%d,%d\n", tracker.count[2], tracker.count[1], tracker.count[0], x, alpha, beta);
	return alpha;
}


/* reps() returns the number of times the current position
   has been repeated. It compares the current value of hash
   to previous values. */

int reps()
{
	int i;
	int r = 0;

	for (i = hply - fifty; i < hply; ++i)
		if (hist_dat[i].hash == hash)
			++r;
	return r;
}


/* sort_pv() is called when the search function is following
   the PV (Principal Variation). It looks through the current
   ply's move list to see if the PV move is there. If so,
   it adds 10,000,000 to the move's score so it's played first
   by the search function. If not, follow_pv remains FALSE and
   search() stops calling sort_pv(). */

void sort_pv()
{
	int i;

	follow_pv = FALSE;
	for(i = first_move[ply]; i < first_move[ply + 1]; ++i)
		if (gen_dat[i].m.u == pv[0][ply].u) {
			follow_pv = TRUE;
			gen_dat[i].score += 10000000;
			return;
		}
}


/* sort() searches the current ply's move list from 'from'
   to the end to find the move with the highest score. Then it
   swaps that move and the 'from' move so the move with the
   highest score gets searched next, and hopefully produces
   a cutoff. */

void sort(int from)
{
	int i;
	int bs;  /* best score */
	int bi;  /* best i */
	gen_t g;

	bs = -1;
	bi = from;
	for (i = from; i < first_move[ply + 1]; ++i)
		if (gen_dat[i].score > bs) {
			bs = gen_dat[i].score;
			bi = i;
		}
	g = gen_dat[from];
	gen_dat[from] = gen_dat[bi];
	gen_dat[bi] = g;
}


/* checkup() is called once in a while during the search. */

void checkup()
{
	/* is the engine's time up? if so, longjmp back to the
	   beginning of think() */
	if (get_ms() >= stop_time) {
		stop_search = TRUE;
		longjmp(env, 0);
	}
}
