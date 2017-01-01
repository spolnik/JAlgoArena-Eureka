# JAlgoArena Eureka [![Build Status](https://travis-ci.org/spolnik/JAlgoArena-Eureka.svg?branch=master)](https://travis-ci.org/spolnik/JAlgoArena-Eureka)

JAlgoArena Eureka is Discovery service for all backend JAlgoArena services. It's created based on Netflix Eureka with usage of Spring Boot and Spring Cloud.

- [Introduction](#introduction)
- [Components](#components)
- [Continuous Delivery](#continuous-delivery)
- [Infrastructure](#infrastructure)
- [Running Locally] (#running-locally)
- [Notes](#notes)

## Introduction

- Eureka server is the place where all JAlgoArena services registers itself - so then they can be found without direct dependency between services. Additionally - together with API Gateway it allows on easily scaling any stateless services - which is crucial for scaling Judge Agents.

![Component Diagram](https://github.com/spolnik/JAlgoArena/raw/master/design/component_diagram.png)

## Components

- [JAlgoArena](https://github.com/spolnik/JAlgoArena)
- [JAlgoArena API](https://github.com/spolnik/JAlgoArena-API)

## Continuous Delivery

- initially, developer push his changes to GitHub
- in next stage, GitHub notifies Travis CI about changes
- Travis CI runs whole continuous integration flow, running compilation, tests and generating reports
- application is deployed into Heroku machine

## Infrastructure

- Heroku (PaaS)
- Spring Boot, Spring Cloud
- Netflix Eureka (discovery service)
- TravisCI - https://travis-ci.org/spolnik/JAlgoArena-Eureka

## Running locally

There are two ways to run it - from sources or from binaries.
- Default port: `5000`

### Running from binaries
- go to [releases page](https://github.com/spolnik/JAlgoArena-Eureka/releases) and download last app package (JAlgoArena-Eureka-[version_number].zip)
- after unpacking it, go to folder and run `./run.sh` (to make it runnable, invoke command `chmod +x run.sh`)
- you can modify port in run.sh script, depending on your infrastructure settings. The script itself can be found in here: [run.sh](run.sh)

### Running from sources
- run `git clone https://github.com/spolnik/JAlgoArena-Eureka` to clone locally the sources
- now, you can build project with command `./gradlew clean bootRepackage` which will create runnable jar package with app sources. Next, run `java -Dserver.port=5000 -jar build\libs\jalgoarena-eureka-*.jar` which will start application
- there is second way to run app with gradle. Instead of running above, you can just run `./gradlew clean bootRun`

## Notes
- [Travis Builds](https://travis-ci.org/spolnik)

![Component Diagram](https://github.com/spolnik/JAlgoArena/raw/master/design/JAlgoArena_Logo.png)
