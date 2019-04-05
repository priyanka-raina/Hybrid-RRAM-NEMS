import glob
import numpy as np
import pandas as pd

for f in glob.glob('dual_rram/*.csv'):
    lines = open(f).readlines()
    for i, line in enumerate(lines):
        entries = [entry.strip() for entry in line.split(',')]
        if entries[0] == 'SetupTitle':
            setup = entries[1]
        elif entries[0] == 'TestParameter':
            if entries[1] == 'Measurement.Primary.Start':
                startv = entries[2]
            elif entries[1] == 'Measurement.Primary.Stop':
                stopv = entries[2]
            elif entries[1] == 'Measurement.Primary.Step':
                stepv = entries[2]
            elif entries[1] == 'Measurement.Primary.Compliance':
                cc = entries[2]
            elif entries[1] == 'Measurement.Primary.Locus':
                sweepdbl = entries[2] == 'Double'
        elif entries[0] == 'MetaData':
            if entries[1] == 'TestRecord.RecordTime':
                rectime = entries[2] #datetime.parse(entries[2])
            elif entries[1] == 'TestRecord.Flag':
                flag = (entries[2] == 'true')
            elif entries[1] == 'TestRecord.Remarks':
                remarks = entries[2]
            elif entries[1] == 'TestRecord.TestTarget':
                devices = entries[2:]
        elif entries[0] == 'DataName':
            startidx = i
            break
    data = pd.read_csv(f, skiprows=startidx).drop(columns=['DataName'])
    print f
    print 'Setup:', setup
    print 'Start V:', startv
    print 'Stop V:', stopv
    print 'Step V:', stepv
    print 'Compliance current:', cc
    print 'Sweep forward and backward:', sweepdbl
    print 'Record time:', rectime
    print 'Flag:', flag
    print 'Remarks:', remarks
    print
    print data
    exit()