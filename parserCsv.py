import csv
import numpy as np

#Data format
#NodeNum Depth Alpha Beta score

#read csv and record beta,score
for movecount in range(5):
    with open('C:/Users/cheekit/Desktop/tree%d.csv'%movecount, 'r') as f:
        data = [line for line in csv.reader(f)]

    depth1nodes=[]
    depth1=[]
    depth2=[]
    node=0
    for row in data:
        if(int(row[1])==0):
            depth2.append(row[3]+','+row[4]) #beta + score
        else:
            depth1.append(depth2)
            depth1nodes.append(row[3]+','+row[4])
            depth2=[]
        node=int(row[0])

    #Calculate the total number of nodes
    #so that we can set the boundary limit in prism model initialization phase 
    numOfNodes=0
    for child in depth1:
        numOfNodes+=1
        for grandchild in child:
            numOfNodes+=1

    output  = open('C:/Users/cheekit/Desktop/chess%d.pm'%movecount, "w")
    output.write('dtmc\n')
    output.write('module chess\n')
    output.write('s : [0..%d] init 0;\n'%numOfNodes)
    output.write('beta : [-10000..10001] init 10001;\n')
    output.write('x : [-10001..10000] init -10001;\n')

    #writing transition from depth 2 to depth 1
    depth=0
    count=0
    output.write("[]s=%d->"%count) #root node
    Idx=0
    header=[]
    prob=1.0/len(depth1nodes)
    for child in depth1nodes:
        count=count+1
        data=child.split(',')
        output.write("1/%d:(s'=%d)&(beta'=%d)&(x'=%d)"%(len(depth1),count,int(data[0]),int(data[1])))
        if(Idx==(len(depth1)-1)): #last
            output.write(";\n")
        else:
            output.write("+")
        header.append("[]s=%d->"%count)
        Idx+=1

    #writing transition from depth 1 to depth 0
    count=len(depth1)
    for i in range(len(depth1)):
        output.write(header[i])
        Idx=0
        for grandchild in depth1[i]:
            count=count+1
            data=grandchild.split(',')
            output.write("1/%d:(s'=%d)&(beta'=%d)&(x'=%d)"%(len(depth1[i]),count,int(data[0]),int(data[1])))
            if(Idx==(len(depth1[i])-1)): #last
                output.write(";\n")
            else:
                output.write("+")
            Idx+=1

    output.write('endmodule\n')
