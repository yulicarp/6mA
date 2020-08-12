#!/bin/python3
l=2000
p=50
start=0
end=0
d={}
while(start<=l):
	d[start]=0
	start+=p
key=sorted(d.keys())
print('P_lnc_6ma')
with open('P_lncRNA_cgenenum.txt', 'r') as f:
	for line in f.readlines():
		w=int(line.strip())
		for i in key:
			if(i<w<=i+50):
				d[i]+=1

print(d)
fw=open('lnc_6ma','w')
print >> fw,d




d={}
start=0
end=0
while(start<=l):
	d[start]=0
	start+=p
key=sorted(d.keys())
print('N_lnc_6ma')
with open('N_lncRNA_cgenenum.txt', 'r') as f:
	for line in f.readlines():
		w=int(line.strip())
		for i in key:
			if(i<w<=i+50):
				d[i]+=1

print(d)
fw=open('N_lnc_6ma','w')
print >> fw,d



d={}
start=0
end=0
while(start<=l):
	d[start]=0
	start+=p
key=sorted(d.keys())
print('P_protein_6ma')
with open('P_protein_cgenenum.txt', 'r') as f:
	for line in f.readlines():
		w=int(line.strip())
		for i in key:
			if(i<w<=i+50):
				d[i]+=1

print(d)
fw=open('P_protein_6ma','w')
print >> fw,d


d={}
start=0
end=0
while(start<=l):
	d[start]=0
	start+=p
key=sorted(d.keys())
print('N_protein_6ma')
with open('N_protein_cgenenum.txt', 'r') as f:
	for line in f.readlines():
		w=int(line.strip())
		for i in key:
			if(i<w<=i+50):
				d[i]+=1

print(d)
fw=open('N_protein_6ma','w')
print >> fw,d

