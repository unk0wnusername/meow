#!/bin/bash

# Check for available dialog tools
if command -v zenity &> /dev/null; then
    zenity --info --text="hi" --title="Greeting"
elif command -v kdialog &> /dev/null; then
    kdialog --msgbox "hi"
elif command -v xdialog &> /dev/null; then
    xdialog --msgbox "hi" 0 0
elif command -v whiptail &> /dev/null; then
    whiptail --msgbox "hi" 8 40
elif command -v dialog &> /dev/null; then
    dialog --msgbox "hi" 5 20
else
    # Fallback: use xterm or echo
    echo "hi"
fi
