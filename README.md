# HyperFrameOE-Grafana

This Grafana docker file is for HyperFrame Open Edition.

### Prerequisites

Docker 19.03.12 (Workspace version, recommended)

### Requirements

1) OS: CentOS 7
2) Grafana: Grafana 7.0.5

### Installation Steps

#### 1. Download Dockerfile.

#### 2. Build a Docker Image.
```bash
$ docker build -t <create image_name>:<image_version> .
```
#### 3. Generate a Container from the Image. (Default port number: 3000)
```bash
$ docker run  -itd -p <Host_Port>:<Default_Port> <image_name>:<image_version> --name <container_name> --privileged -v /sys/fs/cgroup:/sys/fs/cgroup /usr/sbin/init
```

### License

Projects are licensed under the Apache 2.0 license.

### HyperFrameOE Service Level
[HyperFrameOE Service Level](https://github.com/TmaxSoftOfficial/HyperFrameOE-About/blob/master/ServiceLevel.md)
