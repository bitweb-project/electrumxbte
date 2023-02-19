OS Ubuntu 20.XX


Prepare::

  sudo -s

  apt-get update && apt-get upgrade

  add-apt-repository ppa:deadsnakes/ppa

  apt-get install python3-setuptools python3-multidict python3.7 python3.7-dev libleveldb-dev python3-setuptools python3-multidict gcc g++ libsnappy-dev zlib1g-dev libbz2-dev libgflags-dev build-essential python3-pip python3.7-distutils git

  python3.7 -m pip install aiohttp pylru plyvel Cython uvloop quark_hash bitweb_yespower==1.0.5

  important after enable GPU algo , use version bitweb_yespower==1.0.5 ( YescryptR16 )

  git clone https://github.com/bitweb-project/electrumxbte /opt/electrumxbte

  cd /opt/electrumxbte

  mkdir -p db

  groupadd -r electrumxbte

  useradd -r -m -d /var/lib/electrumxbte -k /dev/null -s /bin/false -g electrumxbte electrumxbte

  chown electrumxbte:electrumxbte /opt/electrumxbte/db

  cp contrib/systemd/electrumxbte.service /etc/systemd/system/

  ln -sf /opt/electrumxbte/electrumxbte_server.py /usr/local/bin/electrumxbte_server.py

  ln -sf /opt/electrumxbte/electrumxbte.conf /etc/electrumxbte.conf

Create SSL certificat::

  mkdir -p ssl

  cd ssl

  openssl genrsa -out server.key 2048
  openssl req -new -key server.key -out server.csr
  openssl x509 -req -days 1825 -in server.csr -signkey server.key -out server.crt

Give access to ssl folser and cert::

  chown -R electrumxbte:electrumxbte /opt/electrumxbte/ssl

  cd ..

Create and edit config::

  nano /opt/electrumxbte/electrumxbte.conf

Config Example::

  COIN = Bitweb
  DB_DIRECTORY = /opt/electrumxbte/db
  DAEMON_URL = http://RPCUSER:RPCPASSWORD@IP:RPCPORT/
  SERVICES = tcp://:20001,rpc://:8001,ssl://:20002
  EVENT_LOOP_POLICY = uvloop
  PEER_DISCOVERY = self
  INITIAL_CONCURRENT = 50
  COST_SOFT_LIMIT = 10000
  COST_HARD_LIMIT = 100000
  BANDWIDTH_UNIT_COST = 10000
  SSL_CERTFILE = /opt/electrumxbte/ssl/server.crt
  SSL_KEYFILE = /opt/electrumxbte/ssl/server.key

Give access to config::

  chown root:electrumxbte /opt/electrumxbte/electrumxbte.conf
  chmod 640 /opt/electrumxbte/electrumxbte.conf

Install server::

  python3.7 setup.py install


Start::

  systemctl start electrumxbte

Stop::

  systemctl stop electrumxbte

Autorun::

  systemctl enable electrumxbte

Logs::

  journalctl -u electrumxbte -f
