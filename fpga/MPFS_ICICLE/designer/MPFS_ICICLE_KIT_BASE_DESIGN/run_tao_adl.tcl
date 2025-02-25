set_device -family {PolarFireSoC} -die {MPFS250T_ES} -speed {STD}
read_adl {C:\Users\anana\Documents\JPL\Interrupts\icicle-kit-reference-design-master\MPFS_ICICLE\designer\MPFS_ICICLE_KIT_BASE_DESIGN\MPFS_ICICLE_KIT_BASE_DESIGN.adl}
read_afl {C:\Users\anana\Documents\JPL\Interrupts\icicle-kit-reference-design-master\MPFS_ICICLE\designer\MPFS_ICICLE_KIT_BASE_DESIGN\MPFS_ICICLE_KIT_BASE_DESIGN.afl}
map_netlist
read_sdc {C:\Users\anana\Documents\JPL\Interrupts\icicle-kit-reference-design-master\MPFS_ICICLE\constraint\MPFS_ICICLE_KIT_BASE_DESIGN_derived_constraints.sdc}
read_sdc {C:\Users\anana\Documents\JPL\Interrupts\icicle-kit-reference-design-master\MPFS_ICICLE\constraint\fic_clocks.sdc}
check_constraints {C:\Users\anana\Documents\JPL\Interrupts\icicle-kit-reference-design-master\MPFS_ICICLE\constraint\placer_sdc_errors.log}
estimate_jitter -report {C:\Users\anana\Documents\JPL\Interrupts\icicle-kit-reference-design-master\MPFS_ICICLE\designer\MPFS_ICICLE_KIT_BASE_DESIGN\place_and_route_jitter_report.txt}
write_sdc -mode layout {C:\Users\anana\Documents\JPL\Interrupts\icicle-kit-reference-design-master\MPFS_ICICLE\designer\MPFS_ICICLE_KIT_BASE_DESIGN\place_route.sdc}
