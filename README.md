# Notes
```
sudo docker build --rm --tag pg_scheduler:1.0 .
sudo docker run -it --rm --name my_pg_scheduer pg_scheduler:1.0  -v /data/postgres_bckp:/dump
sudo docker exec -it my_pg_scheduer /bin/bash
```
