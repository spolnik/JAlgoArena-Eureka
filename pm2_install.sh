#!/usr/bin/env bash
pm2 stop eureka
pm2 delete eureka
./gradlew clean
./gradlew stage
pm2 start pm2.config.js