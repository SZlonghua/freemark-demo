package com.liaotao.freemark;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class FreemarkDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(FreemarkDemoApplication.class, args);
	}

	@RequestMapping("/hello")
	public String hello(){
		return "hello word!";
	}

	@RequestMapping("/test")
	public String test(){
		return "hello word test!";
	}

}
