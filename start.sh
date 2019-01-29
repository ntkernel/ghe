cp ./sources.list /etc/apt -f
cp ./unlock /data
chmod +x /data/unlock
apt update
apt install gcc -y
apt install make -y
/usr/share/rbenv/versions/2.4.4/bin/gem install byebug
/usr/share/rbenv/versions/2.5.3/bin/gem install byebug
