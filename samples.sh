sudo apt-get install expect
cd autofill/pts
chmod +x *
cd -

#! /usr/bin/bash

TEST=("pts/coremark" "pts/stress-ng")


for test in TEST; do
    ./autofill/${TEST}.sh $TEST
done

for test in TEST; do
    cd ~/.phoronix-test-suite/test-results
    # merge the results with the same prefix pts/something_date
    phoronix-test-suite result-file-to-json [tests_list]
    phoronix-test-suite merge-results [tests_list]

# https://github.com/racklet/compute-benchmarking.git




# Power consumption:
# - Watt/sec?
# - Idle/working state, half-load/full-load: pts/idle-power-usage
# - Power vs temp vs clock speed


# Temperature benchmarking:
# - With and without the heat sink, fan, airflow
# - How does it operate under various temp: stress-ng


# CPU benchmarking: Float/interger vector operation
# - Element scale: coremark
# - Stress test: stress-ng    pts/node-express-loadtest     system/selenium-top-sites
# - Over-clock test: 
# - Thermal throttling: stress-ng
# - Power efficiency (CPU specific)
# - Processing efficiency: (CPU architecture, system software, compiler)


# Networking benchmarking:
# - Wifi card/[MiMo]
# - (switches)

# Memory benchmarking:
# - Write and read speed: pts/tiobench

# SD card benchmarking: 
# - Write and read speed: tiobench

# System benchmarking:
# - Docker container
# - Inference time of a machine learning model


# Useful links:
# https://docs.google.com/document/d/1Aod1Z4ssOe16UaZmjQ9arhESrXmxPqBaNNcECpYHT4I/edit#heading=h.cdn09ivb266

# https://magpi.raspberrypi.org/articles/how-to-overclock-raspberry-pi-4
# https://www.youtube.com/watch?v=o_WXTRS2qTY

# pts/node-express-loadtest   Node.js Express HTTP Load Test                    Processor 
# system/selenium-top-sites   Time To Load + View Popular Websites              System    



# Would you like to save these test results (Y/n): 
# Enter a name for the result file: coremark_$(date)
# Enter a unique name to describe this test run / configuration: simpleCPUtesting

# New Description: (blank)
