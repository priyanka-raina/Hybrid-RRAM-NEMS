from datetime import datetime
import glob
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

ms = []
for f in glob.glob('dual_rram/*.csv'):
    lines = open(f).readlines()
    m = {}
    for i, line in enumerate(lines):
        entries = [entry.strip() for entry in line.split(',')]
        if entries[0] == 'SetupTitle':
            m['setup'] = entries[1]
        elif entries[0] == 'TestParameter':
            if entries[1] == 'Measurement.Primary.Start':
                m['startv'] = entries[2]
            elif entries[1] == 'Measurement.Primary.Stop':
                m['stopv'] = entries[2]
            elif entries[1] == 'Measurement.Primary.Step':
                m['stepv'] = entries[2]
            elif entries[1] == 'Measurement.Primary.Compliance':
                m['cc'] = entries[2]
            elif entries[1] == 'Measurement.Primary.Locus':
                m['sweepdbl'] = (entries[2] == 'Double')
        elif entries[0] == 'MetaData':
            if entries[1] == 'TestRecord.RecordTime':
                m['rectime'] = datetime.strptime(entries[2], '%m/%d/%Y %H:%M:%S')
            elif entries[1] == 'TestRecord.Flag':
                m['flag'] = (entries[2] == 'true')
            elif entries[1] == 'TestRecord.Remarks':
                m['remarks'] = entries[2]
            elif entries[1] == 'TestRecord.TestTarget':
                m['devices'] = entries[2:]
        elif entries[0] == 'DataName':
            startidx = i
            break
    m['data'] = pd.read_csv(f, skiprows=startidx, skipinitialspace=True).drop(columns=['DataName'])
    ms.append(m)


for m in sorted(ms, key=lambda k: k['rectime'])[89:]:
    print 'Setup:', m['setup']
    print 'Devices:', m['devices']
    print 'Start V:', m['startv']
    print 'Stop V:', m['stopv']
    print 'Step V:', m['stepv']
    print 'Compliance current:', m['cc']
    print 'Sweep forward and backward:', m['sweepdbl']
    print 'Record time:', m['rectime']
    print 'Flag:', m['flag']
    print 'Remarks:', m['remarks']
    print
    print m['data']
    fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(6.5, 8))
    if m['setup'] != 'Resistance':
        titlestr = '%s, devices %s, cc = %s A\nflag = %s, remarks: %s'
        ax1.set_title(titlestr % (m['setup'], m['devices'], m['cc'], m['flag'], m['remarks']))
    else:
        resistance = np.mean(m['data']['Resistance'][1:])
        titlestr = '%s, devices %s, cc = %s A\nflag = %s, remarks: %s, R = %s $\Omega$'
        ax1.set_title(titlestr % (m['setup'], m['devices'], m['cc'], m['flag'], m['remarks'], resistance))
    plt.xlabel('$V_{row}$ (V)')
    curves = []
    try:
        icurve, = ax1.plot(m['data']['Vtop'], m['data']['Itop'])
        ax1.legend([icurve], ['$I_{row}$'])
    except KeyError:
        icurve, = ax1.plot(m['data']['Vrow'], m['data']['absIrow'])
        ax1.plot(m['data']['Vrow'][20], m['data']['absIrow'][20], color='green', marker='o')
        ax1.plot(m['data']['Vrow'][-21:-20], m['data']['absIrow'][-21:-20], color='red', marker='o')
        ax3 = ax1.twinx()
        vgcurve, = ax3.plot(m['data']['Vrow'], m['data']['Vgate'], color='C1')
        ax3.plot(m['data']['Vrow'][20], m['data']['Vgate'][20], color='green', marker='o')
        ax3.plot(m['data']['Vrow'][-21:-20], m['data']['Vgate'][-21:-20], color='red', marker='o')
        r1curve, = ax2.plot(m['data']['Vrow'][1:-1], m['data']['R1'][1:-1])
        ax2.plot(m['data']['Vrow'][20], m['data']['R1'][20], color='green', marker='o')
        ax2.plot(m['data']['Vrow'][-21:-20], m['data']['R1'][-21:-20], color='red', marker='o')
        r2curve, = ax2.plot(m['data']['Vrow'][1:-1], m['data']['R2'][1:-1])
        ax2.plot(m['data']['Vrow'][20], m['data']['R2'][20], color='green', marker='o')
        ax2.plot(m['data']['Vrow'][-21:-20], m['data']['R2'][-21:-20], color='red', marker='o')
        ax1.legend([icurve, vgcurve], ['$I_{row}$', '$V_{gate}$'])
        ax2.legend([r1curve, r2curve], ['$R_1$', '$R_2$'])
    except KeyError:
        pass
    plt.show()
