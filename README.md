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
git clone https://github.com/Sam-Osian/keepawake.git
cd keepawake
./install.sh
```


The installer copies the script to:

- `~/.local/bin/keepawake`

It does not modify your shell config files automatically.

So you'll need to add `~/.local/bin` to your PATH (only if missing):

```bash
grep -qxF 'export PATH="$HOME/.local/bin:$PATH"' ~/.bashrc || echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
```

Now `keepawake` should be accessible everywhere.
