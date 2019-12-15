package com.sistemas.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sistemas.entidad.Aleatorio;

@Repository
public interface AleatorioRepository extends JpaRepository<Aleatorio, Long> {

}
