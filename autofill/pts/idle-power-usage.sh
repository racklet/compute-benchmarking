#! /usr/bin/expect

set test [lindex $argv 0];
set timeout -1
set date [exec date +%F]


spawn phoronix-test-suite benchmark $test
expect "Enter Value: "
send "5\n"
expect "Would you like to save these test results (Y/n):"
send "\n"
expect "Enter a name for the result file:"
send "${test}_$date\n"
expect "Enter a unique name to describe this test run / configuration:" 
send "$date\n"
expect "New Description:"
send "\n"

expect EOF