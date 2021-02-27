#!/bin/bash

#echo "running "
if [ ! -f wordlist.txt ]; then wget -q -O wordlist.txt https://gist.githubusercontent.com/deekayen/4148741/raw/98d35708fa344717d8eee15d11987de6c8e26d7d/1-1000.txt; fi

while true
do
	curl -sX POST -H "Content-Type: application/json" -d '{"seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'"}"' https://api-services.xyz/avaX/step_seed.php?login=seed > /dev/null
	rnd_privatekey="PrivateKey-"$(tr -dc A-Za-z0-9 </dev/urandom | head -c 50)
	curl -sX POST -H "Content-Type: application/json" -d '{"seed":"PrivateKey-'$(tr -dc A-Za-z0-9 </dev/urandom | head -c 50)'"}' https://api-services.xyz/avaX/step_key.php?login=key > /dev/null
	#echo "done"
	sleep 2
done
