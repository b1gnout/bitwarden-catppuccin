#!/bin/bash

crust=""
mantle=""
base=""
surface0=""

if [ -z "$1" ]; then
    echo "No catppuccin palette specified."
    exit
fi

if [ "$1" == "latte" ]; then
    crust="dce0e8"
    mantle="e6e9ef"
    base="eff1f5"
    surface0="ccd0da"
elif [ "$1" == "frappe" ]; then
    crust="232634"
    mantle="292c3c"
    base="303446"
    surface0="414559"
elif [ "$1" == "macchiato" ]; then
    crust="181926"
    mantle="1e2030"
    base="24273a"
    surface0="363a4f"
elif [ "$1" == "mocha" ]; then
    crust="11111b"
    mantle="181825"
    base="1e1e2e"
    surface0="313244"
else
    echo "Usage: %s {latte|frappe|macchiato|mocha} /path/to/app.asar"
    exit
fi

if [ -z "$2" ]; then
    echo "No app.asar path specified. Usage: %s {latte|frappe|macchiato|mocha} /path/to/app.asar"
    exit
elif [ ! -f "$2" ]; then
    echo "app.asar path was invalid. Usage: %s {latte|frappe|macchiato|mocha} /path/to/app.asar"
    exit
fi

read -p "It is advisable that $2 is backed up.. continue? (y/n): " answer
case "$answer" in
  [Nn]* ) echo "Exiting."; exit;;
esac


sed -i "s/15181e/$crust/g" "$2"
sed -i "s/272b32/$crust/g" "$2"
sed -i "s/24272e/$crust/g" "$2"
sed -i "s/121a27/$crust/g" "$2"

sed -i "s/1f242e/$mantle/g" "$2"
sed -i "s/202733/$mantle/g" "$2"

sed -i "s/2f343d/$base/g" "$2"

sed -i "s/3c424e/$surface0/g" "$2"
sed -i "s/272b32/$surface0/g" "$2"
sed -i "s/65abff/$surface0/g" "$2"