# JAlgoArena Eureka [![Build Status](https://travis-ci.org/spolnik/JAlgoArena-Eureka.svg?branch=master)](https://travis-ci.org/spolnik/JAlgoArena-Eureka)

JAlgoArena Eureka is Discovery service for all backend JAlgoArena services. It's created based on Netflix Eureka with usage of Spring Boot and Spring Cloud.

- [Introduction](#introduction)
- [Components](#components)
- [Continuous Delivery](#continuous-delivery)
- [Infrastructure](#infrastructure)
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

## Notes
- [Running locally](https://github.com/spolnik/jalgoarena/wiki)
- [Travis Builds](https://travis-ci.org/spolnik)

![Component Diagram](https://github.com/spolnik/JAlgoArena/raw/master/design/JAlgoArena_Logo.png)
