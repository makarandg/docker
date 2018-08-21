for node in $(seq 2 $managers);
do
	echo "======> manager$node joining swarm as manager ..."
	docker-machine ssh manager$node "docker swarm join  --token $manager_token  --listen-addr $(docker-machine ip manager$node)  --advertise-addr $(docker-machine ip manager$node) $(docker-machine ip manager1)"
done
