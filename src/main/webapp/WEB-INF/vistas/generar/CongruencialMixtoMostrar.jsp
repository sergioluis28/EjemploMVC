<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<h6>${sTitulo}:
		<span class="badge badge-pill badge-success">Periodo:
			${periodo}</span>
	</h6>

	<table class="table table-striped table-bordered table-sm">
		<thead class="thead-dark">
			<tr>
				<th>Nro</th>
				<th>Aleatorio</th>
			</tr>
		</thead>
		<tbody>
			<c:set var="periodo" scope="page" value="${periodo}" />
			<c:set var="pos" scope="page" value="${0}" />

			<c:forEach var="numero" items="${numeros}">
				<c:set var="pos" value="${numero.nro}" />
				<tr <c:if test="${pos == periodo}" > class="table-danger" </c:if>>
					<td>${numero.nro}</td>
					<td>${numero.aleatorio}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</div>