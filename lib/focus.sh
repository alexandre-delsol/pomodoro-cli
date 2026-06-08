focus() {
  local minutes=$1
  local LOG_FILE="$SCRIPT_DIR/logs/focus.log"

  echo "[$(date)] START $minutes min" >> "$LOG_FILE"
  notify-send "🚀 Focus started"

  i=0
  echo "⏳ $i / $minutes min"

  while [ $i -lt $minutes ]; do
	sleep 60
	i=$((i + 1))
	echo "⏳ $i / $minutes min"
  done

  echo "[$(date)] END" >> "$LOG_FILE"
  notify-send "✅ Focus finished"

  echo "🎉 Session terminée ($minutes min)"
}

status_focus() {
  if [ -f logs/focus.log ]; then
    tail -n 5 logs/focus.log
  else
    echo "No session yet"
  fi
}

stop_focus() {
  pkill -f "sleep"
  notify-send "⏸ Focus stopped"
}
