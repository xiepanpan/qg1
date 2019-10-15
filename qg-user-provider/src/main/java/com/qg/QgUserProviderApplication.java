package com.qg;

import com.alibaba.dubbo.spring.boot.annotation.EnableDubboConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@EnableDubboConfiguration
public class QgUserProviderApplication {

	public static void main(String[] args) {
		SpringApplication.run(QgUserProviderApplication.class, args);
	}

}

