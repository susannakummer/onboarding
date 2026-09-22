#! /bin/bash
set -euo pipefail

if [[ $EUID -ne 0 ]]; then
  echo "Please run as root (sudo)"
  exit 1
fi

echo "Running the update script"
echo "#########################"

echo "To update mzmine, enter the URL of the latest .deb build file and press enter. To skip, leave empty and press enter"
echo "e.g. https://github.com/mzmine/mzmine/releases/download/v4.10.6/mzmine_4.10.6_amd64.deb"

read MZMINE

if [ ! -z "MZMINE" ]; then
    curl -L "$MZMINE" -o /tmp/mzmine.deb
    apt install -y /tmp/mzmine.deb
fi

echo "Completed the update script"