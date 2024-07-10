# kafka-local-stack
ready to use (locally) docker compose stack with kafka: zookeeper, broker, schema registry and ui


## how to use 

- stand up local kafka cluster
   ```
   docker compose up -d
   ```    
- create a topic (e.g. my-data-topic)  and push there some data
   ```
   ./cli-tools/create-topic.sh my-data-topic
   ./cli-tools/pub-topic-message my-data-topic key:data

   ```

- use UI from Kafdrop to see what's in the cluster
  ```
  http://localhost:9001
  ```

## known issues 
- access to docker socket from non privileged environment 
  ```
  sudo chown $(whoami):$(whoami) /var/run/docker.sock
  ```
