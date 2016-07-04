#!/usr/bin/env sh

echo "Waiting for Postgres"
while ! echo exit | nc postgres 5432; do sleep 1; done

echo "Starting group-store"
/go/bin/group-store