# utils.sh

log() {
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$POMODORO_HOME/logs/pomodoro.log"
}

notify() {
  notify-send "🍅 Pomodoro" "$1"
}

get_time() {
  date '+%H:%M'
}

minutes_to_seconds() {
  echo $(( $1 * 60 ))
}
