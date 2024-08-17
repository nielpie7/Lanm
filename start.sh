if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/nielpie7/Lanm /Lanm
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Lanm
fi
cd /Lanm
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
