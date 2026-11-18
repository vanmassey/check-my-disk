# check-my-disk

![Platform](https://img.shields.io/badge/Platform-Linux-yellow?logo=linux&logoColor=black)
![Shell](https://img.shields.io/badge/Shell-Bash-4EAA25?logo=gnubash&logoColor=white)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Lint Bash](https://github.com/vanmassey/check-my-disk/actions/workflows/lint.yml/badge.svg)](https://github.com/vanmassey/check-my-disk/actions/workflows/lint.yml)
![GitHub last commit](https://img.shields.io/github/last-commit/vanmassey/check-my-disk)
![GitHub issues](https://img.shields.io/github/issues/vanmassey/check-my-disk)
![GitHub pull requests](https://img.shields.io/github/issues-pr/vanmassey/check-my-disk)
![GitHub stars](https://img.shields.io/github/stars/vanmassey/check-my-disk)

A lightweight Bash script that checks Linux disk partition usage, displays human-readable space metrics, and warns you with top space-consuming directories if usage crosses a threshold.

## How to run it

Make the script executable once:
```bash
chmod +x check_disk.sh
```

Run with default settings (**80%** warning threshold on **`/`**):
```bash
./check_disk.sh
```

Or pass a custom **threshold percentage** and **mount path**:
```bash
./check_disk.sh 85 /home
```

## Exit codes
* **`0`** — Disk usage is below the warning threshold (`OK`).
* **`1`** — Disk usage has reached or exceeded the threshold (`WARNING`).

### Note on AI usage
I used AI to help structure the README, CLI flags, and GitHub Actions linter while reviewing and understanding every line of code in the repository.

### Contributing
If you think a new addition would be beneficial for Check My Disk, feel free to open an issue or send a pull request. Thank you :)
