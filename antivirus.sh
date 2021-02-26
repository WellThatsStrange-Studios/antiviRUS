#!/bin/bash
Path='/home/dan/Soubory/Skript/"antivirus"'

function motherland() {
  if ! grep -q "# MOTHERLAND" "/home/$USER/.bashrc"; then
    echo '# MOTHERLAND' >> ~/.bashrc
    echo 'echo "http://free-antivirus-virusfree-hacks-not-russian-USA-approved-fortnite-vbucks-2021.ru"' >> ~/.bashrc
    echo 'echo "free antivirus virusfree hacks not russian USA approved fortnite vbucks 2021"' >> ~/.bashrc
    echo 'notify-send "free best antivirus" "thank you for using free antivirus virusfree hacks not russian USA approved fortnite vbucks 2021" -u critical -t 99999 -i emblem-favorite' >> ~/.bashrc
  fi
}

function keyControl() {
  node $Path/key.js $Path
  if [[ $? -ne 0 ]]; then
    echo -e "\e[33mYOU NEED KEY FOR ANTIVIRUS!"
    xdg-open http://www.antivi-rus.tk/
    exit 0
  fi
}

needs=("grep"
       "node"
       "bash"
       "xdg-open"
       )

# node $Path/rpc.js &


echo -e "\e[97mfree antivirus virusfree hacks not russian USA approved fortnite vbucks 2021"
echo -e "Your favorite antivirus | http://free-antivirus-virusfree-hacks-not-russian-USA-approved-fortnite-vbucks-2021.ru"
echo -e "\e[34mYou can now stop viruses using our anti virus software"
echo -e "MENU: | Adveristisement: лучшие сводные видео на stepis.ru"
echo -e "\e[31ma : Scan > NOW < !!!"
echo -e "b : Make your machine more stable"
echo
echo -e "\e[90mOther things: // Adedveristitment"
echo -e "1= бесплатно Fortnite Money 2021 трещина"
echo -e "2= капитализм против социализма\e[0m"

read -n1 -p "% " selected

if [[ $selected == "b" ]]; then
  ./stable.sh
fi

if [[ $selected == "a" ]]; then
  keyControl
  echo '[' > '.dump.json'
  chmod a+rx $Path/scan.sh
  $Path/scan.sh

  echo ']' >> '.dump.json'
  node $Path/results.js
fi

if [[ $selected == '2' ]]; then
  xdg-open https://aeronet.cz
  exit
fi

if [[ $selected == '1' ]]; then
  xdg-open $Path/fvb/index.html
fi

killall node 2>/dev/null
