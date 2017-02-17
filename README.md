# example-nats-cli-docker
Example docker setup to run a nats server, a nats-cli listener, and a nats-cli publisher

Similar to [example-nats-go-docker](https://github.com/shadiakiki1986/example-nats-go-docker), but using [nats-cli](https://github.com/shadiakiki1986/nats-cli) instead of a local go client

# Usage
1. Run `docker-compose up`
2. Output

```bash
Building
...
Successfully built
Creating examplenatsgodocker_nats_1
Creating examplenatsgodocker_listener_1
Creating examplenatsgodocker_publisher_1
Attaching to examplenatsgodocker_nats_1, examplenatsgodocker_listener_1, examplenatsgodocker_publisher_1
listener_1   | sleep 1
nats_1       | [1] 2017/02/17 06:54:07.858601 [INF] Starting nats-server version 0.9.6
nats_1       | [1] 2017/02/17 06:54:07.858626 [INF] Starting http monitor on 0.0.0.0:8222
nats_1       | [1] 2017/02/17 06:54:07.858674 [INF] Listening for client connections on 0.0.0.0:4222
nats_1       | [1] 2017/02/17 06:54:07.858689 [INF] Server is ready
nats_1       | [1] 2017/02/17 06:54:07.858934 [INF] Listening for route connections on 0.0.0.0:6222
publisher_1  | sleep 2
listener_1   | 2017/02/17 06:54:09 Start
listener_1   | 2017/02/17 06:54:09 Connected to server:  nats://nats:4222
listener_1   | 2017/02/17 06:54:09 Listening for messages on: foo
publisher_1  | 2017/02/17 06:54:10 Start
publisher_1  | 2017/02/17 06:54:10 Connected to server:  nats://nats:4222
listener_1   | 2017/02/17 06:54:10 Received a message: Marhaba!
listener_1   | 2017/02/17 06:54:10 Listening for messages on: foo
publisher_1  | 2017/02/17 06:54:10 Pushed to channel:  foo
publisher_1  | 2017/02/17 06:54:10 Message:  Marhaba!
examplenatsgodocker_publisher_1 exited with code 0
```
