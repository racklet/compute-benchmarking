#! /usr/bin/expect

set test [lindex $argv 0];
set timeout -1
set date [exec date +%F]


spawn phoronix-test-suite benchmark $test
# expect "Enter Value: "
# send "5\n"
expect "Would you like to save these test results (Y/n):"
send "\n"
expect "Enter a name for the result file:"
send "${test}_$date\n"
expect "Enter a unique name to describe this test run / configuration:" 
send "non\n"
expect "New Description:"
send "\n"

expect "Do you want to view the text results of the testing (Y/n):"
send "\n"
expect "Would you like to upload the results to OpenBenchmarking.org (y/n):"
send "y"
expect "Would you like to attach the system logs (lspci, dmesg, lsusb, etc) to the test result (y/n):"
send "y"
expect EOF
