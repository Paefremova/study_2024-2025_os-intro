#!/bin/bash

SEMAPHORE="/tmp/semaphore.lock"
T1=5  
T2=3  
TTY_OUT="/dev/tty2"

echo "Process $$ is waiting for resource..." > "$TTY_OUT"
while [ -e "$SEMAPHORE" ]; do
    sleep "$T1"
done
echo "Process $$ acquired resource!" > "$TTY_OUT"
touch "$SEMAPHORE"
sleep "$T2"
echo "Process $$ released resource!" > "$TTY_OUT"
rm -f "$SEMAPHORE"
