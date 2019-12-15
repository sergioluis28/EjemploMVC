package com.sistemas.controlador;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sistemas.entidad.Aleatorio;
import com.sistemas.servicio.IGeneradorService;

@Controller
public class GeneradorController {
	@Autowired
	IGeneradorService	Generador;
	
	@PostMapping(value="/generador/congruencialmixto")
	public String CongruencialMixto(
			@RequestParam("Xo") long semilla,
			@RequestParam("a") long multiplicador,
			@RequestParam("c") long incremento,
			@RequestParam("m") long modulo,
			ModelMap mm) {
		
		ArrayList<Aleatorio> Generados;
		long	Periodo=0;
		HashMap<String, Double> parametros = new HashMap<String, Double>();
		
		//(3, 5, 3, 907)
		parametros.put("Semilla", Double.valueOf(semilla));
		parametros.put("a", Double.valueOf(multiplicador));
		parametros.put("b", Double.valueOf(incremento));
		parametros.put("m", Double.valueOf(modulo));
		
		Generador.establecerParametros(parametros);
		Generados = Generador.generarAleatorios(1000);
		Periodo = Generador.obtenerPeriodo(Generados);
		
		mm.addAttribute("sTitulo", "Números Generados ");
		mm.addAttribute("numeros", Generados);
		mm.addAttribute("periodo", Periodo);
		
		return "/generar/CongruencialMixtoMostrar";
	}
}
