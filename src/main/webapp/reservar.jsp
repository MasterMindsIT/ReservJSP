<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="/assets/html/head.jsp"></jsp:include>


		<jsp:include page="/assets/html/header.jsp"></jsp:include>
		
		<section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                <c:forEach var="hb" items="${habitacionBusiness}">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="./assets/img/${hb.getImagen()}" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Habitacion <c:out value="${hb.getId()}"></c:out>, <c:out value="${hb.getNombre()}"></c:out></h5>
                                    <p>Habitación Clásica con cama extragrande, vistas al océano y balcón.</p>
                                    <!-- Product price-->
                                    $ 10.000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            </div>
                        </div>
                    </div>
                    
                 </c:forEach>	 
                   
                </div>
            </div>
        </section>
        
        <div class="container">
			<h2>Información de Reserva de Habitación</h2>
		</div>

		<form class="form" action="Reservando" method="POST">
			<div class="row">
				<div class="col-6">
					<label class="form-label" for="name">Nombre:</label> <input
						class="form-control" type="text" id="name" name="name"
						value="">
				</div>
			
				<div class="col-6">
					<label class="form-label" for="lastName">Apellido:</label> <input
						class="form-control" type="text" id="lastName" name="lastName"
						value="">
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<label class="form-label" for="email">Email:</label> <input
						class="form-control" type="text" id="email" name="email"
						value="">
				</div>
			
				<div class="col-6">
					<label class="form-label" for="monto">Monto a pagar:</label> <input
						class="form-control" type="text" id="monto" name="monto"
						value="">
				</div>
			</div>
		<div class="row">	
		<div class="col-4">
		<label class="form-label" for="">Método de pago:</label>
			<select class="form-control" name="pago">
  <option selected>Seleccionar el método de pago</option>
  <option value="Credito">Credito</option>
  <option value="Debito">Debito</option>
  <option value="Efectivo">Efectivo</option>
  <option value="Contado">Contado</option>
</select>
</div>

<div class="col-4">
<label class="form-label" for="">Días de reserva:</label>
<select class="form-control" name="dias">
  <option selected>Seleccione los días de estancia:</option>
   <c:forEach var="hbs" items="${habitacionBusiness}">
  <option value="${hbs.getNombre()}">${hbs.getNombre()}</option>
  </c:forEach>	
 
</select>
</div>

				<div class="col-4">
					<label class="form-label" for="entrada">Fecha Entrada:</label> <input
						class="form-control" type="date" id="entrada" name="entrada"
						value="">
				</div>
			</div>
			<div class="row pt-4 pb-4">
				<div class="col">
					<button class="btn btn-primary" type="submit">Reservar ahora!!</button>
				</div>
			</div>
		</form>
		
		<jsp:include page="/assets/html/footer.jsp"></jsp:include>
	