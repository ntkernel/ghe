cp ./sources.list /etc/apt -f
cp ./unlock /data
apt update
apt install gcc
apt install make
/usr/share/rbenv/versions/2.4.4/bin/gem install byebug
