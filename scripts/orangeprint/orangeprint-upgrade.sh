#!/bin/bash
# orangeprint-upgrade.sh - Actualizar scripts orangeprint.

dialog --title "OrangePrint Upgrade [v.0.0.1.4a]" \
       --msgbox "Vamos a descargar los scripts de Orangeprint" 0 0

sleep 1
clear
rm -rfv orangeprint-upgrade*
wget https://raw.githubusercontent.com/carlymx/orangeprint/master/scripts/orangeprint/orangeprint-upgrade.sh
chmod +x orangeprint-upgrade.sh

dialog --title "OrangePrint Upgrade [v.0.0.1.4a]" \
       --msgbox "Scripts Actualizados." 0 0
clear
