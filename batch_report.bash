#!/bin/bash
cd
rm phabricator_public.dump
wget http://dumps.wikimedia.org/other/misc/phabricator_public.dump
source phlab/bin/activate
cd ~/phlogiston
git pull
python3 load_transactions_from_dump.py --load 
# python3 load_transactions_from_dump.py --reconstruct --report --project an_source.py
python3 load_transactions_from_dump.py --reconstruct --report --project and_source.py 
python3 load_transactions_from_dump.py --reconstruct --report --project col_source.py
python3 load_transactions_from_dump.py --reconstruct --report --project dis_source.py
python3 load_transactions_from_dump.py --reconstruct --report --project discir_source.py
python3 load_transactions_from_dump.py --reconstruct --report --project diswik_source.py
python3 load_transactions_from_dump.py --reconstruct --report --project dismap_source.py
python3 load_transactions_from_dump.py --reconstruct --report --project fr_source.py 
# python3 load_transactions_from_dump.py --reconstruct --report --project ios_source.py 
python3 load_transactions_from_dump.py --reconstruct --report --project phl_source.py
python3 load_transactions_from_dump.py --reconstruct --report --project ve_source.py

cp /tmp/*.csv ~/html

