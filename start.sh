if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Rithish-vt/AutoFilterAdvance /KGAutoFilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /KGAutofilter
fi
cd /KGAutoFilter
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
