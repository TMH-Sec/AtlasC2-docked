#!/usr/bin/env bash
#creates network, copies from Grimmie's github repo to grab relevant code, builds the server and client
docker network create --driver=bridge --subnet=10.99.99.0/24 --gateway=10.99.99.99 atlas-net
cp -r Atlas/APIModels Server/APIModels
cp -r Atlas/TeamServer Server/TeamServer
cp -r Atlas/Client Client/Client
docker build -t themadhuman/atlasserver:v0.7 Server
docker build -t themadhuman/atlasclient:v0.2 Client
