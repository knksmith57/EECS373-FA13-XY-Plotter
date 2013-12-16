# Created by Actel Designer Software 11.0.0.23
# Mon Dec 09 11:51:45 2013

# (OPEN DESIGN)

open_design "TOP.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "TOP_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "2"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "2"

report -type "timing" -format "TEXT" -analysis "max" -print_summary "yes" -use_slack_threshold "no"                             -print_paths "yes" -max_paths 5 -max_expanded_paths 1                             -max_parallel_paths 1 -include_user_sets "no"                             -include_pin_to_pin "yes" -include_clock_domains "yes"                             -select_clock_domains "no" {TOP_maxdelay_timing_report.txt}
report -type "timing" -format "TEXT" -analysis "min" -print_summary "yes" -use_slack_threshold "no"                             -print_paths "yes" -max_paths 5 -max_expanded_paths 1                             -max_parallel_paths 1 -include_user_sets "no"                             -include_pin_to_pin "yes" -include_clock_domains "yes"                             -select_clock_domains "no" {TOP_mindelay_timing_report.txt}
report -type "timing_violations" -format "TEXT" -analysis "max" -use_slack_threshold "yes" -slack_threshold 0.00                               -limit_max_paths "yes" -max_paths 100 -max_expanded_paths 0                               -max_parallel_paths 1 {TOP_maxdelay_timingviolations_report.txt}
report -type "timing_violations" -format "TEXT" -analysis "min" -use_slack_threshold "yes" -slack_threshold 0.00                               -limit_max_paths "yes" -max_paths 100 -max_expanded_paths 0                               -max_parallel_paths 1 {TOP_mindelay_timingviolations_report.txt}

save_design
