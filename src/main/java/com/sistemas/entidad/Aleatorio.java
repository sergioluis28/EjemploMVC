package com.sistemas.entidad;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Aleatorio {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Long Id;
	int Nro;
	double Xo;
	double Xn;
	double aleatorio;
	double distribucion;
	
	public int getNro() {
		return Nro;
	}
	public void setNro(int nro) {
		Nro = nro;
	}
	public double getXo() {
		return Xo;
	}
	public void setXo(double xo) {
		Xo = xo;
	}
	public double getXn() {
		return Xn;
	}
	public void setXn(double xn) {
		Xn = xn;
	}
	public double getAleatorio() {
		return aleatorio;
	}
	public void setAleatorio(double aleatorio) {
		this.aleatorio = aleatorio;
	}
	public double getDistribucion() {
		return distribucion;
	}
	public void setDistribucion(double distribucion) {
		this.distribucion = distribucion;
	}
}
