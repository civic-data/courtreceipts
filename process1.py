#!/usr/bin/env python3
import sys
import csv
from datetime import datetime

reader = csv.DictReader(sys.stdin)
csvwriter = csv.writer(sys.stdout)

rowout=[]
headerout=[]
firsttime=True
for row in reader:
    for j in row:
        if firsttime:
            headerout+=[j]
        if 'Date' in j and row[j] != '':
            #print (datetime.strftime((datetime.strptime(row[j],'%m/%d/%Y')),'%Y-%m-%dT%H:%M:%SZ'))
            rowout += [datetime.strftime((datetime.strptime(row[j],'%m/%d/%Y')),'%Y-%m-%dT%H:%M:%SZ')]
        else:
            #print (row[j])
            rowout += [row[j]]
    if firsttime:
        csvwriter.writerow(headerout)
        firsttime=False
    csvwriter.writerow(rowout)
    rowout=[]

