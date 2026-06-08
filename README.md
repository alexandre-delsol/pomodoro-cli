# 🍅 Pomodoro CLI (Bash)

A lightweight command-line Pomodoro timer built in **Bash**, designed to improve focus and productivity directly in the terminal.

This project was created as part of a learning journey in system scripting, CLI design, and Linux automation.

---

## 🚀 Features

- ⏱ Start customizable Pomodoro sessions from the terminal
- 📈 Real-time progress display (minute-by-minute)
- 🔔 Desktop notifications (via `notify-send`)
- 📝 Session logging
- 🧩 Modular architecture (separation of concerns)

---

## 🏗️ Project Structure

```text id="structure1"
pomodoro-cli/
├── pomodoro          # CLI entry point
├── lib/
│   ├── focus.sh      # timer logic
│   └── utils.sh      # helper functions
├── logs/
│   └── focus.log     # session history
```

## ⚙️ Installation
1. Clone the repository
git clone <repo-url>
cd pomodoro-cli
2. Make the CLI executable
chmod +x pomodoro
3. Install globally (recommended)
ln -s "$(pwd)/pomodoro" ~/.local/bin/pomodoro

Make sure ~/.local/bin is in your PATH:

echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

## ▶️ Usage

Start a Pomodoro session

```bash
~$ pomodoro start 30 
⏳ 0 / 30 min
⏳ 1 / 30 min
⏳ 2 / 30 min
...
⏳ 30 / 30 min
```

## 📝 Logging

All sessions are stored in:

logs/focus.log

Each entry includes timestamps for start, progress, and completion.

```bash
$ cat focus.log
[Mon Jun  8 03:09:29 PM CEST 2026] START 1 min
[Mon Jun  8 03:10:29 PM CEST 2026] END
```

## 🔔 Desktop notifications


<img width="399" height="91" alt="start-ezgif com-crop (1)" src="https://github.com/user-attachments/assets/cc0ba990-13f8-4788-903a-e121b396e65b" />
<br/>
<img width="399" height="88" alt="finish-ezgif com-crop" src="https://github.com/user-attachments/assets/dd7f7854-533e-4c48-b10e-32b8c2d6c727" />


## 🧠 Learning Objectives

This project helped me practice:

Bash scripting fundamentals
CLI design principles
Process management (sleep, loops)
Modular code organization
Linux filesystem structure (PATH, symlinks)
Logging and basic observability

🚀 Possible Improvements
⏸ Pause / resume functionality
🔁 Automatic Pomodoro cycles (25/5 rule)
📊 Daily productivity statistics
🎨 Terminal progress bar UI
🔊 Sound notifications
📦 One-line installer (install.sh)
🧪 Unit tests for CLI behavior

## 👨‍💻 Author

Personal project developed for learning purposes in software development and Linux tooling.

📌 Notes

This tool is designed for Linux environments and may require libnotify for desktop notifications:
```
sudo apt install libnotify-bin
```
