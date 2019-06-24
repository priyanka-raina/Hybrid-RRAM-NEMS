.subckt cluster_0 y a

m_xcut/m_xcut/mx_sis_top.xnr1/mn1 y a 0 0 n l=1e-07 w=1.9e-07 m=1

m_xcut/m_xcut/mx_sis_top.xnr1/mp1 y a vdd vdd p l=1e-07 w=4.15e-07 m=1

*magma_internal !instflag m_xcut/m_xcut/mx_sis_top.xnr1/mn1 16
*magma_internal !instflag m_xcut/m_xcut/mx_sis_top.xnr1/mp1 16
*magma_internal !netflag  y 8
*magma_internal !netflag  a 4
*magma_internal !netflag  0 67108992
*magma_internal !netflag  vdd 67108928
*magma_internal !netflag  vb 67108864
*magma_internal !netflag  gnd 67108864
.ends

* Finished writing spice file on Date: Mon Jun 24 06:44:46 2019

