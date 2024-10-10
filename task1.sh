pid=$(pgrep -f infinite.sh)

if [ -n "$pid" ]; then
  kill $pid
  echo "Process infinite.sh (PID: $pid) killed."

else
  echo "No infinite.sh process found."

fi