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
    echo "need key"
    xdg-open page/index.html
    exit 0
  fi
}

needs=("grep"
       "node"
       "bash"
       "xdg-open"
       )

node $Path/rpc.js &


echo -e "\e[97mfree antivirus virusfree hacks not russian USA approved fortnite vbucks 2021"
echo -e "Your favorite antivirus | http://free-antivirus-virusfree-hacks-not-russian-USA-approved-fortnite-vbucks-2021.ru"
echo -e "\e[34mYou can now stop viruses using our anti virus software"
echo -e "MENU: | Adveristisement: лучшие сводные видео на stepis.ru"
echo -e "\e[31ma : Scan > NOW < !!!"
echo -e "b : Test if antivirus can work on your machine"
echo
echo -e "\e[90mOther things: // Adedveristitment"
echo -e "1= бесплатно Fortnite Money 2021 трещина"
echo -e "2= капитализм против социализма\e[0m"

read -n1 -p "% " selected

if [[ $selected == "b" ]]; then
  for i in ${needs[@]}; do
    if [[ -z $(type -t $i) ]]; then
      echo "на вашем устройстве нет '$i', УСТАНОВИТЕ ЕГО НЕМЕДЛЕННО PIGS"
      exit 1
    fi
  done
  echo "All Хорошо"
  exit 0
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
