package com.curso.integracion;

import java.util.HashMap;
import java.util.Map;

public class Utilidades {

	public String saludar(String nombre) {
		return "Hola "+nombre;
	}
	
	public static String mayusculas(String txt) {
		return txt.toUpperCase();		
	}
	
	/*
	public Persona metodo(Persona persona) {
		persona.setNombre(persona.getNombre().toUpperCase());
		persona.setDireccion(persona.getDireccion().toUpperCase());
		persona.setTelefono(persona.getTelefono().toUpperCase());
		return persona;
	}
	*/

	public Map<String, String> metodo(Map<String, String> persona) {
		persona.put("nombre", persona.get("nombre").toUpperCase());
		persona.put("direccion", persona.get("direccion").toUpperCase());
		persona.put("telefono", persona.get("telefono").toUpperCase());
		return persona;
	}
	
}
