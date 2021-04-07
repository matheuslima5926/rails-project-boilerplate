#!/bin/bash
set -e
rm -f /places-api/tmp/pids/server.pid
exec "$@"