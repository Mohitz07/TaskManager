package com.projectvoid.springboot.myfirstwebapp.hello;

import org.springframework.web.bind.annotation.RequestMapping;


public class SayHelloController {
	
	// "say-hello-jap" => sayHello.jsp
	// /src/main/resources/META-INF/resources/WEB-INF/jsp/sayHello.jsp
	// /src/main/resources/META-INF/resources/WEB-INF/jsp/login.jsp
	// /src/main/resources/META-INF/resources/WEB-INF/jsp/todos.jsp
	@RequestMapping("/say-hello-jsp")
	public String sayHelloJsp() {
		return "sayHello";	// login, todos
	}
}
