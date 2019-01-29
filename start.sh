cp ./sources.list /etc/apt -f
cp ./unlock /data
apt update
apt install gcc -Y
apt install make -Y
/usr/share/rbenv/versions/2.4.4/bin/gem install byebug
/usr/share/rbenv/versions/2.5.3/bin/gem install byebug
