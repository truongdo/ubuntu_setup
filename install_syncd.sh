mkdir -p ~/.syncd
cd ~/.syncd
git clone https://github.com/truongdq54/syncd.git || echo "already exist"
cd ~/.syncd
if [[ -f /usr/local/bin/syncd ]]; then
    rm /usr/local/bin/syncd
fi
sudo ln -s $PWD/syncd /usr/local/bin/syncd
