.model nch nmos 
.model pch pmos
                                                                                                               
.subckt pexwirecap a b 
C1 a b 10pf
.ends
                                                                                                               
.subckt pex_res a b 
R1 a b 1000
.ends
                                                                                                               
.subckt TNMC d g s b
mnch d g s b nch w=1.0u l=0.5u
.ends
                                                                                                               
.subckt TPMC d g s b
mpch d g s b pch w=1.0u l=0.5u
.ends


