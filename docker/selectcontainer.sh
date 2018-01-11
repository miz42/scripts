#!/bin/bash

CMD='bash'
if [ -e $1 ]
then
	CMD=$*
fi
select container in $(docker ps --format "{{.Names}}")
do
	docker exec -ti $container $CMD
	break
done
