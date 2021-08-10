=========
ElectrumXBTE
=========

.. image:: https://travis-ci.org/spesmilo/electrumxbte.svg?branch=master
    :target: https://travis-ci.org/spesmilo/electrumxbte
.. image:: https://coveralls.io/repos/github/spesmilo/electrumxbte/badge.svg
    :target: https://coveralls.io/github/spesmilo/electrumxbte

This project is a fork of `kyuupichan/electrumxbte <https://github.com/kyuupichan/electrumxbte>`_.
The original author dropped support for Bitcoin, which we intend to keep.

ElectrumXBTE allows users to run their own ElectrumBte server. It connects to your
full node and indexes the blockchain, allowing efficient querying of history of
arbitrary addresses. The server can be exposed publicly, and joined to the public network
of servers via peer discovery. As of May 2020, a significant chunk of the public
ElectrumBte server network runs ElectrumXBTE.

The current version is |release|.

Source Code
===========

The project is hosted on `GitHub
<https://github.com/spesmilo/electrumxbte/>`_.  and uses `Travis
<https://travis-ci.org/spesmilo/electrumxbte>`_ for Continuous
Integration.

Please submit an issue on the `bug tracker
<https://github.com/spesmilo/electrumxbte/issues>`_ if you have found a
bug or have a suggestion to improve the server.

Authors and License
===================

Neil Booth wrote the vast majority of the code; see :ref:`Authors`.
Python version at least 3.7 is required.

The code is released under the `MIT Licence
<https://github.com/spesmilo/electrumxbte/LICENCE>`_.

Getting Started
===============

See :ref:`HOWTO`.

There is also an `installer`_ available that simplifies the
installation on various Linux-based distributions, and a `Dockerfile`_
available .

.. _installer: https://github.com/bauerj/electrumxbte-installer
.. _Dockerfile: https://github.com/lukechilds/docker-electrumxbte

Documentation
=============

.. toctree::

   features
   changelog
   HOWTO
   environment
   protocol
   peer_discovery
   rpc-interface
   architecture
   authors

Indices and tables
==================

* :ref:`genindex`
* :ref:`search`
