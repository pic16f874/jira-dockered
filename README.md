#run
docker-compose -f jira.yml -d up

#kill
docker-compose -f jira.yml down

#cleanup all
docker rm -f C_jira C_nginx C_postgres; docker volume rm jiradockered_V_db-pgsql
