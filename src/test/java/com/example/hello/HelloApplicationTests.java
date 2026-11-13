package com.example.hello;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class HelloApplicationTests {

	@Test
	void contextLoads() {
	}
	@Test
	void shouldFail() { org.junit.jupiter.api.Assertions.assertEquals(1, 2); }
}
