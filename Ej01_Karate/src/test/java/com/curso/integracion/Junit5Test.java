package com.curso.integracion;

import org.junit.jupiter.api.extension.ExtendWith;

import com.intuit.karate.junit5.Karate;

public class Junit5Test {

	//@Test
	@Karate.Test
	Karate testPrueba() {
		return Karate.run("test1").relativeTo(getClass());
	}	
	
}
