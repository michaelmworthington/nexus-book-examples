#!/bin/bash

curl -i -H "Accept: application/xml" -H "Content-Type: application/xml" -X POST  -v -trace-ascii -d "@repository-definition.xml" -u admin:admin123 http://localhost:8081/nexus/service/local/repositories

curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X POST  -v -trace-ascii -d "@repository-definition.json" -u admin:admin123 http://localhost:8081/nexus/service/local/repositories
