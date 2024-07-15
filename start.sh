if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/godxneon/biisal-filter.git /biisal-filter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /biisal-filter
fi
cd /biisal-filter
pip3 install -U -r requirements.txt
echo "Nancy Bot V3 🎗️"
python3 bot.py
