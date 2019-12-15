<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<link rel="icon" href="favicon.ico">
	<title>Generador Variables Aleatorias</title>
	
	<!-- Bootstrap CSS -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <style type="text/css">
        body {
          min-height: 75rem;
          padding-top: 4.5rem;
          padding-bottom: 4.5rem;
        }
    </style>
</head>
<body>
	<nav class="navbar navbar-expand-md fixed-top navbar-dark bg-primary">
		<a class="navbar-brand" href="">Simulación MVC</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" 
			aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	
		<div class="collapse navbar-collapse" id="navbarsExampleDefault">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="" id="dropdown01" 
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Generar Aleatorios</a>
					<div class="dropdown-menu" aria-labelledby="dropdown01">
						<a class="dropdown-item" href="javascript:Generar_CuadradoMedio()">Cuadrado Medio</a>
						<a class="dropdown-item" href="javascript:Generar_ProductoMedio()">Producto Medio</a>
						<a class="dropdown-item" href="javascript:Generar_CongruencialMixto()">Congruencial mixto</a>
						<a class="dropdown-item" href="javascript:Generar_Fibonacci()">Fibonacci</a>
					</div>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="" id="dropdown02" 
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Validar Aleatorios</a>
					<div class="dropdown-menu" aria-labelledby="dropdown01">
						<a class="dropdown-item" href="javascript:Validar_ChiCuadrado()">Chi-Cuadrado</a>
						<a class="dropdown-item" href="javascript:Validar_Kolmogorov()">Kolmogorov-Smirnov</a>
					</div>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="" id="dropdown03" 
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Aplicar Distribución</a>
					<div class="dropdown-menu" aria-labelledby="dropdown01">
						<a class="dropdown-item" href="javascript:Aplicar_Exponencial()">Exponencial</a>
						<a class="dropdown-item" href="javascript:Aplicar_Normal()">Normal</a>
						<a class="dropdown-item" href="javascript:Aplicar_Binomial()">Binomial</a>
						<a class="dropdown-item" href="javascript:Aplicar_Uniforme()">Uniforme</a>
						<a class="dropdown-item" href="javascript:Aplicar_Triangular()">Triangular</a>
						<a class="dropdown-item" href="javascript:Aplicar_Erlang()">Erlang</a>
						<a class="dropdown-item" href="javascript:Aplicar_Poisson()">Poisson</a>
						<a class="dropdown-item" href="javascript:Aplicar_Weibull()">Weibull</a>
					</div>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Ayuda <span class="sr-only">hola</span></a>
				</li>
			</ul>
		</div>
	</nav>
	
	<div class="container">
		<div class="jumbotron" id="divMain">
			<h2>Generación de Variables Aleatorias!</h2>
			<p>Esta es una aplicación que facilita la generación de variables aleatorias, 
				completando tres (03) pasos: Generación de números aleatorios, Validación 
				de aleatorios y Generación de Variables</p>
			<p>
				<a class="btn btn-primary btn-md" href="" role="button">Continuar &raquo;</a>
			</p>
		</div>
		
		<div class="jumbotron" id="divCasoForm" style="display: none;">
		</div>
		
		<div class="container-fluid" id="divCasoRes" style="display: none;">
		</div>
	</div>

	<div class="container-fluid fixed-bottom bg-primary">
		<p style="color:white">&copy; Sistemas 2018</p>
	</div>

	<!-- Bootstrap CDN -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	
	<!-- Acciones del Menú principal -->
	<script>
	function Generar_CuadradoMedio(){
        doIniciarCasoUso();
        // $.get(URL, parametros, funcion(datos, estado, xhr), tipoDato)
        $.get('generar/cuadradomedio',
        		function (Resultado){ 
        			$('#divCasoForm').html(Resultado);
        		}
        );
	};
	
	function Generar_ProductoMedio(){
		doIniciarCasoUso();
        $.get('generar/productomedio',
        		function (Resultado){
					$('#divCasoForm').html(Resultado);
        		}
        );
	};
	
    function Generar_CongruencialMixto(){
        doIniciarCasoUso();
        // $.get(URL, parametros, funcion(datos, estado, xhr), tipoDato)
        $.get("${pageContext.request.contextPath}/generar/congruencialmixto",
        		function(Resultado){
        			$('#divCasoForm').html(Resultado);
        		}
        );
	};
	
	function Generar_Fibonacci(){
        doIniciarCasoUso();
        $.get('generar/fibonacci',
        		function (Resultado){
					$('#divCasoForm').html(Resultado);
        		}
        );
	};
	
	function doIniciarCasoUso(){
		$('#divMain').hide();
		$('#divCasoForm').show();
		$('#divCasoRes').show();
	}
	function doCerrarCasoUso(){
		$('#divMain').show();
		$('#divCasoForm').hide();
		$('#divCasoRes').hide();
	};    
    </script>
	
</body>
</html>