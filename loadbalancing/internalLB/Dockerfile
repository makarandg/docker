version: "3"

services:
  vote:
    image: instavote/vote
    deploy:
      replicas: 2
    networks:
      - mynetwork

  client:
    image: localhost:5000/myubuntu:latest
    command: [sleep, infinity]
    networks:
      - mynetwork

networks:
  mynetwork:
    driver: overlay
