
from __future__ import division
import csv
import numpy as np
from operator import itemgetter

with open('C:\\Users\\cheekit\\Desktop\\tree.csv', 'r') as f:
    data = [line for line in csv.reader(f)]

#Data format
#alpha/beta count[2] count[1] count[0] x alpha beta
#Alpha   0   1   0   13  13  10000

depth1=[]
depth2=[]
node=0
# datasize=len(data)
for row in data:
    if(row==data[len(data)-1]):
        continue
    if(int(row[0])>node):
        if(len(row)==5): #no prunning
            depth2.append(0)
        else:
            depth2.append(1)
    else:
        depth1.append(depth2)
        depth2=[]
    node=int(row[0])

print(len(depth1))
for i in depth1:
    print(i)

depth1size=len(depth1)
prob1=1.0/depth1size
print(prob1)

numOfNodes=0
for child in depth1:
    numOfNodes+=1
    for grandchild in child:
        numOfNodes+=1

print(numOfNodes)
output  = open('C:\\Users\\cheekit\\Desktop\\chess.pm', "w")
output.write('dtmc\n')
output.write('module chess\n')

output.write('s : [0..%d] init 0;\n'%numOfNodes)
output.write('d : [0..1] init 0;\n')

depth=0
count=0
output.write("[]s=%d->"%count) #root node
Idx=0
header=[]
for child in depth1:
    prob=1.0/len(depth1)
    output.write("1/%d:(s'=%d)&(d'=0)"%(len(depth1),count))
    if(Idx==(len(depth1)-1)): #last
        output.write(";\n")
    else:
        output.write("+")
    header.append("[]s=%d->"%count)
    Idx+=1
# output.write("\\\\testing \n")

count=len(depth1)
for i in range(len(depth1)):
    output.write(header[i])
    Idx=0
    for grandchild in depth1[i]:
        count=count+1
        output.write("1/%d:(s'=%d)&(d'=%d)"%(len(depth1[i]),count,grandchild))
        if(Idx==(len(depth1[i])-1)): #last
            output.write(";\n")
        else:
            output.write("+")
        Idx+=1

output.write('endmodule\n')

# for row in data:
#     if(row[0]=='depth 2'):
#         depth=2
#         continue
#     if(row[0]=='depth 1'):
#         depth=1
#         continue

#     if(depth==1):
#         count=count+1
#         output.write("[]s=%d->(s'=%d)&alpha'=%d&beta'=%d\n"%(count,count+1,int(row[5]),int(row[6])))
#         print(row[2])

#     if(depth==2):
#         continue

# output.write('endmodule\n')
