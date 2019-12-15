package com.sistemas.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MenuController {
	
	// Generación
	@GetMapping(value="/generar/cuadradomedio")
	public String generarCuadradoMedio(ModelMap mm) {
		mm.addAttribute("sTitulo", "Generación - Método Cuadrado Medio");
		return "generar/CuadradoMedioNuevo";
	}

	@GetMapping(value="/generar/productomedio")
	public String generarProductoMedio(ModelMap mm) {
		mm.addAttribute("sTitulo", "Generación - Método Producto Medio");
		return "generar/ProductoMedioNuevo";
	}
	
	@GetMapping(value="/generar/congruencialmixto")
	public String generarCongruencialMixto(ModelMap mm) {
		mm.addAttribute("sTitulo", "Generación - Método Congruencial Mixto");
		return "generar/CongruencialMixtoNuevo";
	}
	
	@GetMapping(value="/generar/fibonacci")
	public String generarFibonacci(ModelMap mm) {
		mm.addAttribute("sTitulo", "Generación - Método Fibonacci");
		return "generar/FibonacciNuevo";
	}
	
	// Validación	
	@GetMapping(value="/validar/chicuadrado")
	public String validarChiCuadrado(ModelMap mm) {
		mm.addAttribute("sTitulo", "Validar - Método Chi Cuadrado");
		return "ejemplosaludo";
	}
	
	@GetMapping(value="/validar/kolmogorov")
	public String validarKolmogorov(ModelMap mm) {
		mm.addAttribute("sTitulo", "Validar - Método Kolmogorov Smirnov");
		return "ejemplosaludo";
	}
	
	// Aplicar
	@GetMapping(value="/aplicar/exponencial")
	public String aplicarExponencial(ModelMap mm) {
		mm.addAttribute("sTitulo", "Aplicar - Método Exponencial");
		return "ejemplosaludo";
	}
	
	@GetMapping(value="/aplicar/normal")
	public String aplicarNormal(ModelMap mm) {
		mm.addAttribute("sTitulo", "Aplicar - Método Normal");
		return "ejemplosaludo";
	}
	
	@GetMapping(value="/aplicar/binomial")
	public String aplicarBinomial(ModelMap mm) {
		mm.addAttribute("sTitulo", "Aplicar - Método Binomial");
		return "ejemplosaludo";
	}
	
	@GetMapping(value="/aplicar/uniforme")
	public String aplicarUniforme(ModelMap mm) {
		mm.addAttribute("sTitulo", "Aplicar - Método Uniforme");
		return "ejemplosaludo";
	}
	
	@GetMapping(value="/aplicar/triangular")
	public String aplicarTriangular(ModelMap mm) {
		mm.addAttribute("sTitulo", "Aplicar - Método Triangular");
		return "ejemplosaludo";
	}
	
	@GetMapping(value="/aplicar/erlang")
	public String aplicarErlang(ModelMap mm) {
		mm.addAttribute("sTitulo", "Aplicar - Método Erlang");
		return "ejemplosaludo";
	}
	
	@GetMapping(value="/aplicar/poisson")
	public String aplicarPoisson(ModelMap mm) {
		mm.addAttribute("sTitulo", "Aplicar - Método Poisson");
		return "ejemplosaludo";
	}
	
	@GetMapping(value="/aplicar/weibull")
	public String aplicarWeibull(ModelMap mm) {
		mm.addAttribute("sTitulo", "Aplicar - Método Weibull");
		return "ejemplosaludo";
	}
}

