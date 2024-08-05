#!/bin/sh
( : ${DATABASE_URL?"please pass -e DATABASE_URL="} ) || exit 1
( : ${POSTGRES_URL?"please pass -e POSTGRES_URL="} ) || exit 1
# Start the application
yarn start