package com.sistemas.servicio;

import java.util.ArrayList;
import java.util.HashMap;

import com.sistemas.entidad.Aleatorio;

public interface IGeneradorService {
	public void establecerParametros (HashMap<String, Double> parametros);
	public ArrayList<Aleatorio> generarAleatorios(int cantidad);
	public int obtenerPeriodo(ArrayList<Aleatorio> lista);
}
