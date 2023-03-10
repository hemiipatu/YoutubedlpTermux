#!/system/bin/sh

# Colors
# --------------------------------------------
 BL='\e[01;90m' > /dev/null 2>&1; # Black
 R='\e[01;91m' > /dev/null 2>&1;  # Red
 G='\e[01;92m' > /dev/null 2>&1;  # Green
 Y='\e[01;93m' > /dev/null 2>&1;  # Yellow
 B='\e[01;94m' > /dev/null 2>&1;  # Blue
 P='\e[01;95m' > /dev/null 2>&1;  # Purple
 C='\e[01;96m' > /dev/null 2>&1;  # Cyan
 W='\e[01;97m' > /dev/null 2>&1;  # White
 LG='\e[01;37m' > /dev/null 2>&1; # Light Gray
 N='\e[0m' > /dev/null 2>&1;      # Null
 L='\033[7m' > /dev/null 2>&1;    #Lines
 X='\033[0m' > /dev/null 2>&1;    #Closer
# --------------------------------------------

echo -e $Y$L"\n Updating... \n"$N
pkg update && apt upgrade -y

clear

echo -e $R" __     __         _         _              _ _    _______                               "$N
sleep 0.3
echo -e $R" \ \   / /        | |       | |            | | |  |__   __|                              "$N
sleep 0.3
echo -e $R"  \ \_/ /__  _   _| |_ _   _| |__   ___  __| | |_ __ | | ___ _ __ _ __ ___  _   ___  __  "$N
sleep 0.3
echo -e $R"   \   / _ \| | | | __| | | | '_ \ / _ \/ _` | | '_ \| |/ _ \ '__| '_ ` _ \| | | \ \/ /  "$N
sleep 0.3
echo -e $R"    | | (_) | |_| | |_| |_| | |_) |  __/ (_| | | |_) | |  __/ |  | | | | | | |_| |>  <   "$N
sleep 0.3
echo -e $R"    |_|\___/ \__,_|\__|\__,_|_.__/ \___|\__,_|_| .__/|_|\___|_|  |_| |_| |_|\__,_/_/\_\  "$N
sleep 0.3
echo -e $R"                                               | |                                       "$N
sleep 0.3
echo -e $R"                                               |_|                                       "$N

sleep 1.5
  echo -e $Y$L"\n Installing python... "$N
    apt install python -y
    /data/data/com.termux/files/usr/bin/python3 -m pip install --upgrade pip
      clear
 
sleep 0.2		
  echo -e $Y$L"\n Installing ffmpeg... \n"$N
    pkg install ffmpeg -y
      clear

  echo -e $Y$L"\n Updating System... \n"$N
    pkg update && apt upgrade -y
    apt --fix-broken install
      clear

sleep 0.2		
  echo -e $Y$L"\n Installing wget... \n"$N
    pkg install wget -y
      clear

sleep 0.2
  echo -e $Y$L"\n Installing YouTube-dlp... \n"$N 
    pip install yt-dlp
    pip install yt-dlp -U
      clear

echo -e $Y$L"\n Preparing configs... \n"$N

sleep 2
  echo -e $Y$L"\n Creating Youtube-dlp folder... \n"$N
    mkdir /data/data/com.termux/files/home/storage/shared/Download/YouTube-dlp

sleep 1.5
  echo -e $Y$L"\n Creating Youtube-dlp config... \n"$N
    rm -rf ~/.config/yt-dlp
    mkdir -p ~/.config/yt-dlp

sleep 1.5
  echo -e $Y$L"\n Getting config file... \n"$N
    wget https://raw.githubusercontent.com/hemiipatu/YoutubedlpTermux/master/config -P /data/data/com.termux/files/home/.config/yt-dlp
      cd /data/data/com.termux/files/home/.config/yt-dlp
      chmod +x config

sleep 1
  echo -e $Y$L"\n Creating bin folder... \n"$N
    mkdir ~/bin

sleep 1.5
  echo -e $Y$L"\n Getting files... \n"$N
    rm -rf /data/data/com.termux/files/home/bin/termux-url-opener
      wget https://raw.githubusercontent.com/hemiipatu/YoutubedlpTermux/master/termux-url-opener -P /data/data/com.termux/files/home/bin
        cd /data/data/com.termux/files/home/bin
        chmod +x termux-url-opener
          clear

echo -e $Y$L"\n Finishing configuration... \n"$N

sleep 3.5
  echo -e $G"\n Installation Finished... \n"$N

kill -1 $PPID
