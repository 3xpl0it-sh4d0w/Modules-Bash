#!/bin/bash
# ============================================================
# MODULES - By : 3xpl0it sh4d0w - © All Rights Reserved : 2022 
# ============================================================
# DATE DE CRÉATION      :   11-05-2022 05:11
# DATE DE MODIFICATION  :   11-05-2022 06:40
# ============================================================

COMMAND="$1"

DIR_MODULES="modules/"
DIR_INSTALL="/opt/shadow.mods"

chmod +x ${DIR_MODULES}colors.bash

. ${DIR_MODULES}colors.bash

module.colors

if [[ "$COMMAND" = "-i" ]] || \
[[ "$COMMAND" = "install" ]] || \
[[ "$COMMAND" = "--install" ]]:
  then
    mkdir ${DIR_INSTALL}
    cp modules.bash ${DIR_INSTALL}
    cp ${DIR_MODULES}color.bash ${DIR_INSTALL}
fi

if [[ ! "$COMMAND" ]];
  then
    printf "${grey}[${none} ${red}ERREUR${none} ${grey}]${none} ${cyan}La commande ${1} n'existe pas !${none}\n"
fi