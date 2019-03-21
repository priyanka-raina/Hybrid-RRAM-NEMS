import matplotlib.pyplot as plt
import numpy as np
import pandas as pd, pylab

data = pd.read_csv('tt.txt', sep='\t')
data.columns = [column.split('`')[0] for column in data.columns]

fig, (ax1, ax2, ax3, ax4, ax5, ax6) = plt.subplots(nrows=6, sharex=True)

# Set the font dictionaries (for plot title and axis titles)
title_font = {'fontname':'Arial', 'size':'16', 'color':'black', 'weight':'bold', 'verticalalignment':'bottom'}
axis_font = {'fontname':'Arial', 'size':'12'}

plt.xlabel('$t$ (s)', **axis_font)
ax1.set_ylabel('$|I_{ds}|$ (A)', **axis_font)
ax1.plot(data['t'], data['par(abs(i(vsrc))'], color='black')
ax2.set_ylabel('$V_g$ (V)', **axis_font)
ax2.plot(data['t'], data['v(vg)'], color='black')
ax3.set_ylabel('$V_{row} - V_{g}$ (V)', **axis_font)
ax3.plot(data['t'], data['v(vrow,vg)'], color='black')
ax4.set_ylabel('$V_{g} - V_{col}$ (V)', **axis_font)
ax4.plot(data['t'], data['v(vg,vcol)'], color='black')
ax5.set_ylabel('$V_{row}$ (V)', **axis_font)
ax5.plot(data['t'], data['v(vrow)'], color='black')
ax6.set_ylabel('$V_{col}$ (V)', **axis_font)
ax6.plot(data['t'], data['v(vcol)'], color='black')
plt.show()