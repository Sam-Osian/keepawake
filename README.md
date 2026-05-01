# keepawake

Small Bash utility to temporarily block system sleep/idle using `systemd-inhibit`.

## Requirements

- Linux system with `systemd-inhibit` available

## Usage

In a Bash terminal:

```bash
keepawake
```

Keeps the system awake indefinitely until you press `Ctrl+C`.

```bash
keepawake 8
```

Keeps the system awake for 8 hours, or until `Ctrl+C`.

```bash
keepawake 1.5
```

Keeps the system awake for 1.5 hours, or until `Ctrl+C`.


## Install

From GitHub:

```bash
git clone https://github.com/<your-org-or-username>/keepawake.git
cd keepawake
./install.sh
```


The installer copies the script to:

- `~/.local/bin/keepawake`

It does not modify your shell config files automatically.

You'll need to append the PATH safely with:

```bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
```

Alternatively, if you prefer, edit `~/.bashrc` manually:

```bash
nano ~/.bashrc
```

Then:
- Scroll to the bottom
- Add this line:

```bash
export PATH="$HOME/.local/bin:$PATH"
```

- Save your changes.
- Reload with:

```bash
source ~/.bashrc
```

Then `keepawake` should be accessible everywhere.