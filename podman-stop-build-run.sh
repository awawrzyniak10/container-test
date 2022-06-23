#!/bin/bash
podman stop -a
podman rm -a
podman rmi -a
podman build -t httpdtest .
podman run -d --name=httpdtest -p 8080:80 httpdtest
