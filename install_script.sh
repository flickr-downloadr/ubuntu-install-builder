#!/usr/bin/expect
set timeout 2
spawn ./installbuilder.run --mode unattended --unattendedmodeui none
expect 'Do you accept this license? \[y/n]:' { send 'y\n' }
expect 'Please select the installation language\n' { send '13' }
interact