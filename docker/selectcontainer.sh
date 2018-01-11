#!/bin/bash

CMD='bash'
if [ ! -z $1 ]
then
	CMD=$*
fi
echo $CMD
select container in $(docker ps --format "{{.Names}}")
do
	docker exec -ti $container $CMD
	break
done
