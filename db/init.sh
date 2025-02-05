#!/bin/sh
psql -h localhost -U ${POSTGRES_USER} -d ${POSTGRES_DB} -c "DROP SCHEMA public CASCADE; CREATE SCHEMA public;"
psql -h localhost -U ${POSTGRES_USER} -d ${POSTGRES_DB} < /db/dump_squash.sql