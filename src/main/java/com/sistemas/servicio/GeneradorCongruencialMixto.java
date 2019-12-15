package com.sistemas.servicio;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sistemas.entidad.Aleatorio;
import com.sistemas.repositorio.AleatorioRepository;

@Service
public class GeneradorCongruencialMixto implements IGeneradorService {
	private double semilla;
	private double a;
	private double b;
	private double m;
	private int	periodo;
	
	@Autowired
	private AleatorioRepository repositorio;

	@Override
	public void establecerParametros(HashMap<String, Double> parametros) {
		this.semilla = parametros.get("Semilla");
		this.a = parametros.get("a");
		this.b = parametros.get("b");
		this.m = parametros.get("m");
	}

	@Override
	public ArrayList<Aleatorio> generarAleatorios(int cantidad) {
		ArrayList<Aleatorio> Lista = new ArrayList<Aleatorio>();
		int i=0;
		double Xo = semilla;
		double Xf;
		Aleatorio Numero;
				
		for (i=0; i<= cantidad; i++) {
			Numero = new Aleatorio();
			
			Xf = (a*Xo + b) % m;
			Numero.setNro(i);
			Numero.setXo(Xo);
			Numero.setXn(Xf);
			Numero.setAleatorio((1.0*Xf / m));
			
			Lista.add(Numero);
			Xo = Xf;
		}
		repositorio.saveAll(Lista);
		repositorio.flush();
		
		return Lista;
	}
	
	@Override
	public int obtenerPeriodo(ArrayList<Aleatorio> aleatorios) {
		Aleatorio y;
		int check=0;
		
		periodo = 0;
		
		y = aleatorios.get(0);
		for (Aleatorio x: aleatorios) {
			if (x.getAleatorio()== y.getAleatorio()) {
				check++;
			}
			else {
				if (check<2) {
					periodo++;
				}
			}
		}
		return periodo;
	}

}
