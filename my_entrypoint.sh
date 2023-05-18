#!/bin/bash
airflow db init
airlfow db upgrade
airflow users create -r Admin -u admin -e jyotisachdeva8957@gmail.com -f jyoti -l sachdeva -p admin
airflow scheduler &
airflow webserver

export CONNECTION_CHECK_MAX_COUNT=${1}
shift
exec /entrypoint "${@}"