package com.curso.integracion;

import com.intuit.karate.core.MockServer;

public class KarateMockServer {

	public static void main(String[] args) {
        MockServer server = MockServer
                .feature("classpath:com/curso/integracion/01_mock.feature")
                .http(8080).build();
        System.setProperty("karate.server.port", server.getPort() + "");
    }
    
}
