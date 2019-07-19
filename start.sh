cp ./sources.list /etc/apt -f
cp ./unlock /bin
chmod +x /bin/unlock
apt update
echo apt install gcc -y
echo apt install make -y
echo /usr/share/rbenv/versions/2.4.4/bin/gem install byebug
echo /usr/share/rbenv/versions/2.5.3/bin/gem install byebug
