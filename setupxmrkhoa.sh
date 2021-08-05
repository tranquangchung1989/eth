cd /usr/local/bin
sudo wget https://github.com/xmrig/xmrig/releases/download/v6.13.1/xmrig-6.13.1-linux-static-x64.tar.gz
sudo tar xvzf xmrig-6.13.1-linux-static-x64.tar.gz
sudo bash -c 'echo -e "[Unit]\nDescription=XMRig Miner\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/usr/local/bin/xmrig-6.13.1/xmrig -o pool.minexmr.com:4444 -u 83xXdGU24yHi1VVSaKd7q5WDt58nDT8vs7bxuRsHRFwFYjqWgUkMHJUckUAc8V2PVQQgHZxth38VtemneqjYcbMoCupN7YN -p linux --rig-id linux --randomx-no-rdmsr\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/xmrig.service'
sudo systemctl daemon-reload
sudo systemctl enable xmrig.service
echo "Setup completed!"