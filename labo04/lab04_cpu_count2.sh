#If numcpu is empty then echo usage
if [ -z "$1" ]; then
    echo "Usage: [MAX_NUM_CORES]"
    exit 1
fi

# Gets CPU cores
num_cpu=$(nproc)

# Gets minimum number required
required=$1

# Check whether there are enough CPU cores
if [ "$num_cpu" -lt "$required" ]; then
    echo "Not enough CPU cores"
    exit 1
else
    echo "Enough CPU Cores available"
fi
