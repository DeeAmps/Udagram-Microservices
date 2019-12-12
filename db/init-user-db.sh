#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER dee;
    GRANT ALL PRIVILEGES ON DATABASE udacity_cloud TO dee;
EOSQL