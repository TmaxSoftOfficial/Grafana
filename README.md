# Grafana

This is a group of Prometheus & Grafana Docker files with versions for HyperFrame Open Edition.

### Prerequisites

Docker 19.03.12 (This is a workspace's version, other versions might be compatiable with this.)

### Set up Info
1) OS : CentOS 7
2) Grafana : Grafana 7.0.5

### Installing

1. Check your desired state of an image you will create.

    : Grafana version / OS version

2. Download a Dockerfile you want
#### 1. Build an Docker Image
```bash
$ docker build -t <create image_name>:<image_version> .
```
#### 2. Generate a Container from Image(Grafana Default Port : 3000)
```bash
$ docker run  -itd -p <Host_Port>:<Default_Port> <image_name>:<image_version> --name <container_name> --privileged -v /sys/fs/cgroup:/sys/fs/cgroup /usr/sbin/init
```

## License

This project is licensed under the Apache-2.0
