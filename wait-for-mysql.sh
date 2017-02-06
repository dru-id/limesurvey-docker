#!/bin/bash
# wait-for-mysql.sh

set -e

host="$LIMESURVEY_DB_HOST"
user="$LIMESURVEY_DB_USER"
pwd="$LIMESURVEY_DB_PASSWORD"
db="$LIMESURVEY_DB_NAME"

echo "Waiting for $host"
until mysql -h"$host" -u"$user" -p"$pwd" $db &> /dev/null
do
  printf "."
  sleep 1
done

echo -e "\nmysql ready"
