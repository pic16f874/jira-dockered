#!/usr/bin/env bash
cp -f /var/lib/postgresql/data/pg_hba.conf /var/lib/postgresql/data/pg_hba.orig 
sed  's/host all all all md5/host jira all 172.22.0.4\/32 md5/' /var/lib/postgresql/data/pg_hba.orig > /var/lib/postgresql/data/pg_hba.conf