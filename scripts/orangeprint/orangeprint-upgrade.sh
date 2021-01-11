#!/bin/bash
# orangeprint-help.sh - Un Archivo de ayuda.

dialog --title "OrangePrint Upgrade [v.0.0.1.1a]" \
       --msgbox "Vamos a descargar los scripts de Orangeprint"

sleep 1
clear

wget https://raw.githubusercontent.com/carlymx/orangeprint/master/scripts/orangeprint/*

dialog --title "OrangePrint Upgrade [v.0.0.1.1a]" \
       --msgbox "Scripts Actualizados."
clear
