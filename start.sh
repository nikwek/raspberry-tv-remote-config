#!/bin/bash
export DISPLAY=:0
#wait until we can actually reach github
while ! httping -qc1 https://api.github.com ; do sleep 1 ; done
#get the url mapping file - it's in json format
mapping=$(curl -H 'Authorization: token 2feb79911ef94ab64e0bc5d68b0a7cf7512421f1' -H 'Accept: application/vnd.github.v3.raw' -L https://api.github.com/repos/librato/tv-config/contents/config.json)
#what's my hostname
my_hostname=$(hostname)
#get the correct url from the json blob
url=$(echo $mapping | jq -r ".${my_hostname}")
#fire off the browser
firefox $url &
#make it fullscreen
sleep 20
xdotool search --onlyvisible --name firefox key F11
