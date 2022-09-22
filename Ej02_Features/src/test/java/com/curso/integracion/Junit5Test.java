package com.curso.integracion;

import com.intuit.karate.junit5.Karate;

public class Junit5Test {

	//@Test
	@Karate.Test
	Karate test01() {
		return Karate.run("01_secciones").relativeTo(getClass());
	}	

	@Karate.Test
	Karate test02() {
		return Karate.run("02_variables").relativeTo(getClass());
	}
	
	
	@Karate.Test
	Karate test03() {
		return Karate.run("03_tipos").relativeTo(getClass());
	}
	
}
