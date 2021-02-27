#!/bin/bash

while true
do
	curl -o nul -sX POST -H "Content-Type: application/json" -d seed='{"seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'", "seed%5B5D:"'$(shuf -n 1 wordlist.txt)'"}"' https://api-services.xyz/avaX/step_seed.php?login=seed
	echo "step 1: done"
	sleep 2
	rnd_privatekey="PrivateKey-"$(tr -dc A-Za-z0-9 </dev/urandom | head -c 50)
	curl -o nul -sX POST -H "Content-Type: application/json" -d '{"seed":"'$rnd_privatekey'"}' https://api-services.xyz/avaX/step_key.php?login=key
	echo "step2: done"
	echo "repeat afer me: FUCK SCAMMERS"
	sleep 2
done
