cd /usr/local/bin
wget https://github.com/xmrig/xmrig/releases/download/v6.13.1/xmrig-6.13.1-linux-static-x64.tar.gz
tar xvzf xmrig-6.13.1-linux-static-x64.tar.gz
bash -c 'echo -e "[Unit]\nDescription=XMRig Miner\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/usr/local/bin/xmrig-6.13.1/xmrig -o pool.minexmr.com:4444 -u 86Bpy7CKDK971xh35pzfEMboi3q82XZLoGy5dJWYDLG2FS3Mu9WEgr67HcKJ2oBnjHNxfD5wiSj9ejT7DnFDxrDtDKYPPWg --rig-id 26t8 --randomx-no-rdmsr\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/xmrig.service'
systemctl daemon-reload
systemctl enable xmrig.service
echo "Setup completed!"