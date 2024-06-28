<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="/assets/html/head.jsp"></jsp:include>


		<jsp:include page="/assets/html/header.jsp"></jsp:include>
		
		<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="./assets/img/hotel1.jpg" alt="First slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<div class="card text-center">
  <div class="card-header">
    Bienvenido al hotel
  </div>
  <div class="card-body">
    <h5 class="card-title">Tratamiento especial pata tí</h5>
    <p class="card-text">Ven y disfruta con tu familia será una experiencia inolvidable</p>
    <a href="${pageContext.request.contextPath}/Reservando" class="btn btn-primary">RESERVAR</a>
  </div>
  <div class="card-footer text-muted">
    oferta válida
  </div>
</div>
		
		<jsp:include page="/assets/html/footer.jsp"></jsp:include>
	