#!/bin/bash

curl -X DELETE -v -u admin:admin123 http://localhost:8081/nexus/service/local/repositories/my-releases-xml

curl -X DELETE -v -u admin:admin123 http://localhost:8081/nexus/service/local/repositories/my-releases-json