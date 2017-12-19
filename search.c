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


/* think() calls search() iteratively. Search statistics
are printed depending on the value of output:
0 = no output
1 = normal output
2 = xboard format output */
FILE *fp;
int prun_count;
int move_count = 0;

void think(int output)
{
	prun_count = 0;
	int i, j, x;

	char filename[50];
	sprintf(filename,"C:/Users/cheekit/Desktop/tree%d.csv", move_count);
	fp = fopen(filename, "w");
	move_count += 1;
	/* try the opening book first */
	/*
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
	i = 2;
	//for (i = 1; i <= max_depth; ++i) {
	follow_pv = TRUE;
	x = search(-10000, 10000, i, 0);
	printf("prun_count:%d\n",prun_count);
	printf("prun probability:%f\n", (prun_count/(float)nodes));
	if (output == 1)
		printf("ply      nodes  score  pv\n");
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
	//if (x > 9000 || x < -9000)
	//	break;
	//}
	fclose(fp);
}


/* search() does just that, in negamax fashion */

int search(int alpha, int beta, int depth, int prune)
{
	int i, j, x;
	BOOL c, f;

	int prun = prune;
	int prun_ret = -100000;
	/* we're as deep as we want to be; call quiesce() to get
	   a reasonable score and return it. */
	if (!depth)
		return quiesce(alpha, beta);

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
		return eval();
	if (hply >= HIST_STACK - 1)
		return eval();

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
		//prun = 0;
		sort(i);
		if (!makemove(gen_dat[i].m.b))
			continue;
		f = TRUE;
		++nodes;
		if (prun)
			prun_count += 1;
		x = -search(-beta, -alpha, depth - 1, prun);
		fprintf(fp, "%d,%d,%d,%d,%d", nodes, depth - 1, alpha, beta, x);
		if (prun == 1)
			fprintf(fp, ",prune\n");
		else
			fprintf(fp, "\n");
		takeback();
		if (x > alpha) {

			/* this move caused a cutoff, so increase the history
			   value so it gets ordered high next time we can
			   search it */
			history[(int)gen_dat[i].m.b.from][(int)gen_dat[i].m.b.to] += depth;
			if (x >= beta&&prun_ret == -100000) {
				prun = 1;
				prun_ret = beta;
			}
			if (x < beta)
				alpha = x;

			/* update the PV */
			pv[ply][ply] = gen_dat[i].m;
			for (j = ply + 1; j < pv_length[ply + 1]; ++j)
				pv[ply][j] = pv[ply + 1][j];
			pv_length[ply] = pv_length[ply + 1];
		}
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
	if (prun == 1)
		return prun_ret;
	else
		return alpha;
}


/* quiesce() is a recursive minimax search function with
   alpha-beta cutoffs. In other words, negamax. It basically
   only searches capture sequences and allows the evaluation
   function to cut the search off (and set alpha). The idea
   is to find a position where there isn't a lot going on
   so the static evaluation function will work. */

int quiesce(int alpha,int beta)
{
	int i, j, x;

	/* do some housekeeping every 1024 nodes */
	if ((nodes & 1023) == 0)
		checkup();

	pv_length[ply] = ply;

	/* are we too deep? */
	if (ply >= MAX_PLY - 1)
		return eval();
	if (hply >= HIST_STACK - 1)
		return eval();

	/* check with the evaluation function */
	x = eval();
	if (x >= beta)
		return beta;
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
		x = -quiesce(-beta, -alpha);
		takeback();
		if (x > alpha) {
			if (x >= beta)
				return beta;
			alpha = x;

			/* update the PV */
			pv[ply][ply] = gen_dat[i].m;
			for (j = ply + 1; j < pv_length[ply + 1]; ++j)
				pv[ply][j] = pv[ply + 1][j];
			pv_length[ply] = pv_length[ply + 1];
		}
	}
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
