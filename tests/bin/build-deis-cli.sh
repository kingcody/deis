#!/bin/sh
#
# Creates a python virtual environment and builds the `deis` client binary with it.

virtualenv --system-site-packages venv
. venv/bin/activate
pip install docopt==0.6.2 future==0.14.1 python-dateutil==2.2 requests==2.3.0 pyinstaller==2.1 termcolor==1.1.0
make -C client/ client
