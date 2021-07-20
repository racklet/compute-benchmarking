#! /usr/bin/expect

set test [lindex $argv 0];
set timeout -1
set date [exec date +%F]

spawn phoronix-test-suite benchmark $test
expect "System Test Configuration"
send "21\n"
expect "Would you like to save these test results"
send "Y\n"
expect "Enter a name for the result file" 
send "stress_it_out\n"
expect "Enter a unique name to describe this test run / configuration"
send "non\n"
expect "New Description"
send "\n"

expect EOF