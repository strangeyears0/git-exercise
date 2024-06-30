#!/bin/bash
case "$1" in
  --date|-d)
    date
    ;;
  --logs|-l)
    if [ -z "$2" ]; then
      num=100
    else
      num=$2
    fi
    for ((i=1; i<=num; i++)); do
      echo "File number $i created by skrypt.sh on $(date)" > "log_$i.txt"
    done
    ;;
  --help|-h)
    echo "Available options:"
    echo "--date, -d       Show current date"
    echo "--logs, -l [num] Create log files"
    echo "--help, -h       Show this help message"
    ;;
  *)
    echo "Unknown option: $1"
    ;;
esac

