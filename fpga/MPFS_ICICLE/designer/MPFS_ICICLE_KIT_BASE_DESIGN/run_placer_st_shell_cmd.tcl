read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {C:/Users/anana/Documents/JPL/Interrupts/icicle-kit-reference-design-master/MPFS_ICICLE/designer/MPFS_ICICLE_KIT_BASE_DESIGN/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {C:\Users\anana\Documents\JPL\Interrupts\icicle-kit-reference-design-master\MPFS_ICICLE\designer\MPFS_ICICLE_KIT_BASE_DESIGN\MPFS_ICICLE_KIT_BASE_DESIGN_layout_combinational_loops.xml}
report -type slack {C:\Users\anana\Documents\JPL\Interrupts\icicle-kit-reference-design-master\MPFS_ICICLE\designer\MPFS_ICICLE_KIT_BASE_DESIGN\pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {C:\Users\anana\Documents\JPL\Interrupts\icicle-kit-reference-design-master\MPFS_ICICLE\designer\MPFS_ICICLE_KIT_BASE_DESIGN\MPFS_ICICLE_KIT_BASE_DESIGN_place_and_route_constraint_coverage.xml}]
set reportfile {C:\Users\anana\Documents\JPL\Interrupts\icicle-kit-reference-design-master\MPFS_ICICLE\designer\MPFS_ICICLE_KIT_BASE_DESIGN\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp