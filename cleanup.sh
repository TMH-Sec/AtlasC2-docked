#!/usr/bin/env bash
docker stop atlasserver 2>/dev/null
docker stop atlasclient 2>/dev/null
docker rm atlasserver 2>/dev/null
docker rm atlasclient 2>/dev/null
