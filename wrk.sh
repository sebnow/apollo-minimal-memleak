#!/usr/bin/env bash
wrk -t4 -c10 -d 10m -s request.lua http://localhost:4000
