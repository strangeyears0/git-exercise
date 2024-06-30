#!/bin/bash
case "$1" in
  --date)
    date
    ;;
  --logs)
    if [ -z "$2" ]; then
      num=100
    else
      num=$2
    fi
    for ((i=1; i<=num; i++)); do
      echo "File number $i created by skrypt.sh on $(date)" > "log_$i.txt"
    done
    ;;
  *)
    echo "Unknown option: $1"
    ;;
esac

