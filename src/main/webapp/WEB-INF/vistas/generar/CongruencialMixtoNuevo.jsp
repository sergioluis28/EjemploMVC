<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="container">
	<h4>${sTitulo}</h4>
	<br>
	<form id="formGenerarCongruencialMixto" action="generador/congruencialmixto" method="post">
		<div class="form-row">
			<div class="form-group col-md-3">
				<label for="Xo">Semilla:</label> <input type="text"
				class="form-control" id="Xo" placeholder="Xo" name="Xo">
			</div>
			<div class="form-group col-sm-3">
				<label for="a">Multiplicador:</label> <input type="text"
				class="form-control" id="a" placeholder="a" name="a">
			</div>
			<div class="form-group col-sm-3">
				<label for="c">Incremento:</label> <input type="text"
				class="form-control" id="c" placeholder="c" name="c">
			</div>
			<div class="form-group col-sm-3">
				<label for="m">Módulo:</label> <input type="text"
				class="form-control" id="m" placeholder="m" name="m">
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<button id="miBoton" type="submit" class="btn btn-primary btn-md">Generar Aleatorios</button>
			</div>	
		</div>
	</form>
</div>

<script>
$(document).ready(function(){
	$("#formGenerarCongruencialMixto").on('submit', function(e) {
	    $.post('generador/congruencialmixto',
			{
	    		Xo: $('#Xo').val(),
	    		a: $('#a').val(),
	    		c: $('#c').val(),
	    		m: $('#m').val()
			},
			function (Resultado){
				$('#divCasoRes').html(Resultado);	
			}
	    );
	    e.preventDefault();
	});
});
</script>
