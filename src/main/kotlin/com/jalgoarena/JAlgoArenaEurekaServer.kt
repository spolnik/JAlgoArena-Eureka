package com.jalgoarena

import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer

@SpringBootApplication
@EnableEurekaServer
open class JAlgoArenaEurekaServer

fun main(args: Array<String>) {
    SpringApplication.run(JAlgoArenaEurekaServer::class.java, *args)
}
