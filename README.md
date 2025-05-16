
## main documentation
https://hub.docker.com/r/jboss/business-central-workbench-showcase/

https://vishnu-chalil.medium.com/how-to-setup-drools-workbench-in-local-machine-with-docker-image-c846ca37eab2

https://docs.drools.org/8.44.0.Final/drools-docs/drools/getting-started/index.html




##  setup with drools


docker rm -f jbpm-workbench

docker run -p 8080:8080 -p 8001:8001 -d --name jbpm-workbench quay.io/kiegroup/business-central-workbench-showcase:latest



## to run 

docker run -p 8080:8080 -p 8001:8001 -d --name jbpm-workbench quay.io/kiegroup/business-central-workbench-showcase:latest

## to open brms in browser

    http://localhost:8080/business-central

## to run the execution server

      docker run -p 8180:8080 -d --name kie-server jboss/kie-server-showcase:latest


