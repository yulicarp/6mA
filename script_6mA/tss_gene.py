#!/bin/python3
l=2000
p=50
start=0
end=0
d={}
while(start<=l):
	d[start]={}
	start+=p
key=sorted(d.keys())
print('P_lncRNA_gene')
with open('P_lncRNA_cgenenum.txt', 'r') as f:
	for line in f.readlines():
		g,w=line.strip().split()
		w=int(w)
		for i in key:
			if(i<w<=i+50):
				d[i][g]=1

for i in d:
	d[i]=len(d[i])

print(d)
fw=open('P_lncRNA_gene','w')
print >> fw,d



d={}
start=0
end=0
while(start<=l):
	d[start]={}
	start+=p
key=sorted(d.keys())
print('N_lncRNA_gene')
with open('N_lncRNA_cgenenum.txt', 'r') as f:
	for line in f.readlines():
		g,w=line.strip().split()
		w=int(w)
		for i in key:
			if(i<w<=i+50):
				d[i][g]=1

for i in d:
	d[i]=len(d[i])

print(d)
fw=open('N_lncRNA_gene','w')
print >> fw,d


d={}
start=0
end=0
while(start<=l):
	d[start]={}
	start+=p
key=sorted(d.keys())
print('N_protein_gene')
with open('N_protein_cgenenum.txt', 'r') as f:
	for line in f.readlines():
		g,w=line.strip().split()
		w=int(w)
		for i in key:
			if(i<w<=i+50):
				d[i][g]=1

for i in d:
	d[i]=len(d[i])

print(d)
fw=open('N_protein_gene','w')
print >> fw,d


d={}
start=0
end=0
while(start<=l):
	d[start]={}
	start+=p
key=sorted(d.keys())
print('P_protein_gene')
with open('P_protein_cgenenum.txt', 'r') as f:
	for line in f.readlines():
		g,w=line.strip().split()
		w=int(w)
		for i in key:
			if(i<w<=i+50):
				d[i][g]=1

for i in d:
	d[i]=len(d[i])

print(d)
fw=open('P_protein_gene','w')
print >> fw,d


