
# Loop constraints
directive set /red_tint/core/main CSTEPS_FROM {{. == 2}}

# IO operation constraints
directive set /red_tint/core/main/io_read(video_in:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /red_tint/core/main/io_read(mouse_xy:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /red_tint/core/main/io_write(video_out:rsc.d) CSTEPS_FROM {{.. == 1}}

# Real operation constraints
directive set /red_tint/core/main/acc CSTEPS_FROM {{.. == 1}}
directive set /red_tint/core/main/else:acc CSTEPS_FROM {{.. == 1}}
directive set /red_tint/core/main/acc#1 CSTEPS_FROM {{.. == 1}}
directive set /red_tint/core/main/else:else:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /red_tint/core/main/makepos:else:or CSTEPS_FROM {{.. == 1}}
directive set /red_tint/core/main/makepos:and CSTEPS_FROM {{.. == 1}}
directive set /red_tint/core/main/else:else:acc CSTEPS_FROM {{.. == 1}}
directive set /red_tint/core/main/makepos#1:else:or CSTEPS_FROM {{.. == 1}}
directive set /red_tint/core/main/makepos#1:and CSTEPS_FROM {{.. == 1}}
directive set /red_tint/core/main/else:and CSTEPS_FROM {{.. == 1}}
directive set /red_tint/core/main/else:and#1 CSTEPS_FROM {{.. == 1}}
directive set /red_tint/core/main/and CSTEPS_FROM {{.. == 1}}
directive set /red_tint/core/main/mux1h CSTEPS_FROM {{.. == 1}}
directive set /red_tint/core/main/and#1 CSTEPS_FROM {{.. == 1}}