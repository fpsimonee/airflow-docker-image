FROM apache/airflow:1.10.15
LABEL AUTHOR="Felipe Simone" EMAIL="fpsimonee@gmail.com"

USER airflow
COPY --chown=airflow:airflow ./dags/ /opt/airflow/dags
COPY my_entrypoint.sh /

ENTRYPOINT ["/usr/bin/dumb-init", "--", "/my_entrypoint.sh"]