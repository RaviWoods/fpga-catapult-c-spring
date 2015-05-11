
# Loop constraints
directive set /motion_blur/core/core:rlp CSTEPS_FROM {{. == 0}}
directive set /motion_blur/core/core:rlp/main CSTEPS_FROM {{. == 3} {.. == 0}}

# IO operation constraints
directive set /motion_blur/core/core:rlp/main/SHIFT:if:else:else:if:io_read(vin:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:io_write(vout:rsc.d) CSTEPS_FROM {{.. == 2}}

# Real operation constraints
directive set /motion_blur/core/core:rlp/main/ACC2:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC2:acc CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC2:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC2-5:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC2:acc#7 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC2:acc#9 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC2:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC2-5:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC2:acc#10 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC2:acc#12 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC2:acc#11 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/ACC2-5:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#10 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#11 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#9 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/acc CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:mul#1 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:mul CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#12 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#14 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#19 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#13 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#15 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#16 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#17 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#18 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:mul#2 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#21 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#20 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#23 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#22 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#24 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/acc#2 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:mul#6 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:mul#5 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#25 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#27 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#32 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#26 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#28 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#29 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#30 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#31 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:mul#7 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#34 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#33 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#36 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#35 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#37 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/acc#4 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:mul#11 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:mul#10 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#38 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#40 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#45 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#39 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#41 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#42 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#43 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#44 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:mul#12 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#4 CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax:else:acc CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax:else:and CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax:or CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax#1:else:acc CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax#1:else:and CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax#2:else:acc CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax#2:else:and CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#47 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#49 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#46 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#48 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/acc#6 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:mul#15 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#50 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#52 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#55 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#51 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#53 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#54 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:mul#16 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/FRAME:acc#5 CSTEPS_FROM {{.. == 2}}
directive set /motion_blur/core/core:rlp/main/absmax#2:or CSTEPS_FROM {{.. == 1}}
directive set /motion_blur/core/core:rlp/main/absmax#1:or CSTEPS_FROM {{.. == 1}}
