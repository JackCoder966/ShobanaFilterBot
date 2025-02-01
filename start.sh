if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/JackCoder966/ShobanaFilterBot.git /ShobanaFilterBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ShobanaFilterBot
fi
cd /ShobanaFilterBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
