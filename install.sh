#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="${HOME}/.local/bin"
TARGET_PATH="${TARGET_DIR}/keepawake"
SOURCE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/bin/keepawake"

if [[ ! -f "${SOURCE_PATH}" ]]; then
  echo "Error: source script not found at ${SOURCE_PATH}" >&2
  exit 1
fi

mkdir -p "${TARGET_DIR}"
cp "${SOURCE_PATH}" "${TARGET_PATH}"
chmod +x "${TARGET_PATH}"

echo "Installed keepawake to ${TARGET_PATH}"

case ":${PATH}:" in
  *":${TARGET_DIR}:"*)
    echo "${TARGET_DIR} is already on PATH. You can run: keepawake"
    ;;
  *)
    echo
    echo "${TARGET_DIR} is not currently on your PATH."
    echo "Add one of the following lines to your shell config, then restart your shell:"
    echo
    echo "For bash (~/.bashrc):"
    echo '  export PATH="$HOME/.local/bin:$PATH"'
    echo
    echo "For zsh (~/.zshrc):"
    echo '  export PATH="$HOME/.local/bin:$PATH"'
    ;;
esac

echo
if command -v systemd-inhibit >/dev/null 2>&1; then
  echo "Dependency check: systemd-inhibit found."
else
  echo "Warning: systemd-inhibit was not found; keepawake requires a systemd-based Linux environment."
fi
