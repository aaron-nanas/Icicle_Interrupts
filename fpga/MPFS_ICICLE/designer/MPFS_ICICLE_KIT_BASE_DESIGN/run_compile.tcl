set_defvar -name {SPEED}   -value {STD}
set_defvar -name {VOLTAGE} -value {1.05}
set_defvar -name {TEMPR}   -value {EXT}
set_defvar -name {PART_RANGE}   -value {EXT}
set_defvar -name {IO_DEFT_STD} -value {LVCMOS18}
set_defvar -name {PACOMP_PARPT_MAX_NET} -value {10}
set_defvar -name {PA4_GB_MAX_RCLKINT_INSERTION} -value {16}
set_defvar -name {PA4_GB_MIN_GB_FANOUT_TO_USE_RCLKINT} -value {1000}
set_defvar -name {PA4_GB_MAX_FANOUT_DATA_MOVE} -value {5000}
set_defvar -name {PA4_GB_HIGH_FANOUT_THRESHOLD} -value {5000}
set_defvar -name {PA4_GB_COUNT} -value {36}
set_defvar -name {RESTRICTPROBEPINS} -value {0}
set_defvar -name {RESTRICTSPIPINS} -value {0}
set_defvar -name {PDC_IMPORT_HARDERROR} -value {1}
set_defvar -name {PA4_IDDQ_FF_FIX} -value {1}
set_defvar -name {BLOCK_PLACEMENT_CONFLICTS} -value {ERROR}
set_defvar -name {BLOCK_ROUTING_CONFLICTS} -value {LOCK}
set_defvar -name {RTG4_MITIGATION_ON} -value {0}
set_defvar -name {USE_CONSTRAINT_FLOW} -value True
set_defvar -name {FHB_AUTO_INSTANTIATION} -value {0}
set_defvar -name {SYSTEM_CONTROLLER_SUSPEND_MODE} -value {0}

set_partition_info -name "/MPFS_ICICLE_KIT_BASE_DESIGN" -timestamp "1740435409"
set_partition_info -name "/MPFS_ICICLE_KIT_BASE_DESIGN/MPFS_ICICLE_KIT_BASE_DESIGN" -timestamp "1740435409"
set_partition_info -name "/MPFS_ICICLE_KIT_BASE_DESIGN/MPFS_ICICLE_KIT_BASE_DESIGN" -timestamp "1740435409"
set_partition_info -name "/MPFS_ICICLE_KIT_BASE_DESIGN/MPFS_ICICLE_KIT_BASE_DESIGN" -timestamp "1740435409"
set_partition_info -name "/MPFS_ICICLE_KIT_BASE_DESIGN/MPFS_ICICLE_KIT_BASE_DESIGN" -timestamp "1740435409"
set_partition_info -name "/MPFS_ICICLE_KIT_BASE_DESIGN/MPFS_ICICLE_KIT_BASE_DESIGN" -timestamp "1740435409"
set_partition_info -name "/MPFS_ICICLE_KIT_BASE_DESIGN/MPFS_ICICLE_KIT_BASE_DESIGN" -timestamp "1740435409"
set_partition_info -name "/MPFS_ICICLE_KIT_BASE_DESIGN/MPFS_ICICLE_KIT_BASE_DESIGN" -timestamp "1740435409"
set_partition_info -name "/MPFS_ICICLE_KIT_BASE_DESIGN/MPFS_ICICLE_KIT_BASE_DESIGN" -timestamp "1740435409"
set_compile_info \
    -category {"Device Selection"} \
    -name {"Family"} \
    -value {"PolarFireSoC"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Device"} \
    -value {"MPFS250T_ES"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Package"} \
    -value {"FCVG484"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Speed Grade"} \
    -value {"STD"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Core Voltage"} \
    -value {"1.05V"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Part Range"} \
    -value {"EXT"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Default I/O technology"} \
    -value {"LVCMOS 1.8V"}
set_compile_info \
    -category {"Source Files"} \
    -name {"Topcell"} \
    -value {"MPFS_ICICLE_KIT_BASE_DESIGN"}
set_compile_info \
    -category {"Source Files"} \
    -name {"Format"} \
    -value {"Verilog"}
set_compile_info \
    -category {"Source Files"} \
    -name {"Source"} \
    -value {"C:\Users\anana\Documents\JPL\Interrupts\icicle-kit-reference-design-master\MPFS_ICICLE\synthesis\MPFS_ICICLE_KIT_BASE_DESIGN.vm"}
set_compile_info \
    -category {"Options"} \
    -name {"Limit the number of high fanout nets to display to"} \
    -value {"10"}
compile \
    -desdir {C:\Users\anana\Documents\JPL\Interrupts\icicle-kit-reference-design-master\MPFS_ICICLE\designer\MPFS_ICICLE_KIT_BASE_DESIGN} \
    -design MPFS_ICICLE_KIT_BASE_DESIGN \
    -fam PolarFireSoC \
    -die PA5SOC250T_ES \
    -pkg fcvg484 \
    -merge_pdc 0
