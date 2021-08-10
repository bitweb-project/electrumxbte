#!/bin/sh
###############
# run_electrumxbte
###############

# configure electrumxbte
export COIN=Bitcoin
export DAEMON_URL=http://rpcuser:rpcpassword@127.0.0.1
export NET=mainnet
export CACHE_MB=400
export DB_DIRECTORY=/home/username/.electrumxbte/db
export SSL_CERTFILE=/home/username/.electrumxbte/certfile.crt
export SSL_KEYFILE=/home/username/.electrumxbte/keyfile.key
export BANNER_FILE=/home/username/.electrumxbte/banner
export DONATION_ADDRESS=your-donation-address

# connectivity
export HOST=
export TCP_PORT=50001
export SSL_PORT=50002

# visibility
export REPORT_HOST=hostname.com
export RPC_PORT=8000

# run electrumxbte
ulimit -n 10000
/usr/local/bin/electrumxbte_server 2>> /home/username/.electrumxbte/electrumxbte.log >> /home/username/.electrumxbte/electrumxbte.log &

######################
# auto-start electrumxbte
######################

# add this line to crontab -e
# @reboot /path/to/run_electrumxbte.sh
