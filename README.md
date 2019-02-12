#run

docker-compose -f jira.yml -d up

#kill

docker-compose -f jira.yml down

#cleanup all

docker rm -f C_jira C_nginx C_postgres; docker volume rm jiradockered_V_db-pgsql



**Task:**

Task scope

* JIRA (latest version)
  + cptactionhank/atlassian-jira from docker hub
* JIRA external database (Postgres or MySql)
  + postgres from docker hub
* Nginx as proxy
  + Nginx from docker hub

**Credentials:**

* JIRA user: admin
  + устанавливается через web интерфейс
* JIRA password: admin
  + устанавливается через web интерфейс

* Database: jira
* User: test
* Password: test
  + устанавливается файлом pgsql/02_create-jira-pgdb.sql для docker-compose 

**Requirements:**
* JIRA database should only be accessible from JIRA
  + устанавливается файлом  pgsql/01_modify_pghba.sh для docker-compose
* The JVM minimum and maximum memory should be set to 2048Mb
  + устанавливается в файле jira.yml 
* Outgoing emails should be disabled
  + устанавливается через web интерфейс
* We should be able to upload large attachments to JIRA
  + размер аттачмента устанавливается в настройках jira через web интерфейс 
    и файле /nginx/conf.d/default.conf параметром client_max_body_size 10M;


