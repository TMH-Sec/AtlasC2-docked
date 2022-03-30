#!/usr/bin/env bash
docker rm atlasserver 2>/dev/null
docker rm atlasclient 2>/dev/null
echo -n 'How many ports do you want to expose for listening?: '
read numports
if [[ $numports -gt 1 ]]
then
  ports=()
  for i in $(seq 1 $numports)
  do
    echo -n "Enter port $i: " # use double qoutes so that $i works
    read port
	  ports+=($port)
	done
fi
if [[ $numports -eq 1 ]]
then
  echo -n 'Enter the port number: '
  read ports
fi
if [[ $numports -eq 0 ]]
then
  echo 'Aiight then, dry run...'
  unset ports  # easy to check for empty varibles
fi
portstring=''
for port in ${ports[@]}
  do
    portstring="$portstring -p $port:$port "
  done
final=$(echo "${portstring}" | awk '{gsub(/^ +| +$/,"")} {print $0}')
docker run -d $final --name=atlasserver --network=atlas-net --hostname=atlasserver --ip=10.99.99.33 themadhuman/atlasserver:v0.7
docker run -it --name=atlasclient --network=atlas-net --hostname=atlasclient --ip=10.99.99.34 --add-host=atlasserver:10.99.99.33 themadhuman/atlasclient:v0.2
