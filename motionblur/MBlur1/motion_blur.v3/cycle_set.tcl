
# Loop constraints
directive set /motion_blur/core/core:rlp CSTEPS_FROM {{. == 0}}
directive set /motion_blur/core/core:rlp/main CSTEPS_FROM {{. == 3} {.. == 0}}

# IO operation constraints
directive set /motion_blur/core/core:rlp/main/FRAME:io_read(offset:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/SHIFT:if:else:else:if:io_read(vin:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:io_write(vout:rsc.d) CSTEPS_FROM {{.. == 2}}

# Real operation constraints
directive set /motion_blur/core/core:rlp/main/ACC1-2:if#1:and CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#35 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-4:if#3:and#2 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-5:if#4:and#1 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#34 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#41 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-1:if:and#2 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-2:if#1:and#5 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#33 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-3:if#2:and#2 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-4:if#3:and#3 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#40 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#44 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#45 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-1:if:and#1 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-2:if#1:and#3 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#37 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-2:if#1:and#4 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-5:if#4:and CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#36 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#42 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-3:if#2:and CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#39 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-4:if#3:and CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-1:if:and CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#38 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#43 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC2-5:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-2:if#1:and#1 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#49 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-4:if#3:and#6 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-5:if#4:and#3 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#48 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#55 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-1:if:and#5 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-2:if#1:and#8 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#47 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-3:if#2:and#5 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-4:if#3:and#7 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#46 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#54 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#58 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-1:if:and#4 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-2:if#1:and#6 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#51 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-2:if#1:and#7 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-5:if#4:and#2 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#50 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#56 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#59 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-3:if#2:and#3 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#53 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-4:if#3:and#4 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-1:if:and#3 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#52 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#57 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC2-5:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-2:if#1:and#2 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#63 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-4:if#3:and#10 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-5:if#4:and#5 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#62 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#69 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-1:if:and#8 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-2:if#1:and#11 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#61 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-3:if#2:and#8 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-4:if#3:and#11 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#60 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#68 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#72 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-1:if:and#7 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-2:if#1:and#9 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#65 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-2:if#1:and#10 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-5:if#4:and#4 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#64 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#70 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#73 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-3:if#2:and#6 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#67 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-4:if#3:and#8 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1-1:if:and#6 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#66 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC1:if:acc#71 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC2-5:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax:if:acc CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax:else:acc CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax:else:else:acc CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax:else:mux CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax:or CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax#1:if:acc CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax#1:else:acc CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax#1:else:else:acc CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax#1:else:mux CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax#1:or CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax#2:if:acc CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax#2:else:acc CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax#2:else:else:acc CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax#2:else:mux CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax#2:or CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#10 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#7 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#9 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/acc CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#13 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#15 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#12 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#11 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#14 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/acc#2 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#18 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#20 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#17 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#16 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#19 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/acc#4 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#21 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#23 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#25 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#26 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#27 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/acc#1 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#22 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#24 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#2 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#28 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#30 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#32 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#33 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#34 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/acc#3 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#29 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#31 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#3 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#35 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#37 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#39 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#40 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#41 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/acc#5 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#36 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#38 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#4 CSTEPS_FROM {{.. == 2}}
