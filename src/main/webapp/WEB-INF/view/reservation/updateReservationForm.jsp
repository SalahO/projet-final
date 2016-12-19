<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Reservation modification form</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />
    <link href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="<c:url value="/resources/css/home.css" />" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="bootstrap-iso">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8 col-sm-6 col-xs-12">
                    <div class="alert alert-info">
                        <p>Modification de la réservaton : <br>Résa ${reservation.id }, Salle : ${reservation.classroom.name },
                        Ordinateur : ${reservation.laptop.name }, Jour : ${reservation.bookingDate}, Début : ${reservation.startTime}, End : ${reservation.endTime}</p>
                    </div>
                    <form class="form-inline" method="get" action="/reservations/resource/add">
                        <input type="hidden" name="bookingId" value="${reservation.id }"/>
                        <select class="carousel form-control" id="availableLaptop" name="laptopId" >
                        	<c:choose>
    							<c:when test="${empty reservation.laptop}">
                   	   				<option value="-1" selected>Aucun laptop</option>
                   	   			</c:when>
                   	   			<c:otherwise>
                   	   				<option value="-1">Aucun laptop</option>
                   	   			</c:otherwise>
                   	   		</c:choose>
                       		<c:forEach items="${allLaptops}" var="laptop">
                       			<c:choose>
     								<c:when test="${(empty reservation.laptop) or (reservation.laptop.id != laptop.id)}">
                   	   					<option value="${laptop.id}">${laptop.name}</option>
                   	   				</c:when>
                   	   				<c:otherwise>
                   	   					<option value="${laptop.id}" selected>${laptop.name}</option>
                   	   				</c:otherwise>   
                   	   			</c:choose>        		
                        	</c:forEach>
                   		</select>
                   		<select class="carousel form-control" id="availableRoom" name="roomId">
                   			<c:choose>
    							<c:when test="${empty reservation.classroom}">
                   	   				<option value="-1" selected>Aucune salle</option>
                   	   			</c:when>
                   	   			<c:otherwise>
                   	   				<option value="-1">Aucune salle</option>
                   	   			</c:otherwise>
                   	   		</c:choose>
                       		<c:forEach items="${allRooms}" var="room">
                       			<c:choose>
     								<c:when test="${(empty reservation.classroom) or (reservation.classroom.id != classroom.id)}">
                   	   					<option value="${room.id}">${room.name}</option>
                   	   				</c:when>
                   	   				<c:otherwise>
                   	   					<option value="${room.id}" selected>${room.name}</option>
                   	   				</c:otherwise>   
                   	   			</c:choose>        		
                        	</c:forEach>
                   		</select>
                        <div class="form-group"> <!-- Date input -->
                            <label class="control-label" for="bookingDate">Date de réservation</label>
                            <input class="form-control" id="bookingDate" name="bookingDate" placeholder="YYYY-MM-DD" 
                    			   pattern="[0-9]{4}-[0-1][0-9]-[0-3][0-9]" title="Entrez une date au format YYYY-MM-DD"
                    			   value="${reservation.bookingDate}"
                    			   type="date"/>
                        </div>
                        <select class="carousel form-control" id="startTime" name="startTime" >
                            <option ${start_time_preselected[0]}>09:00</option>
                            <option ${start_time_preselected[1]}>10:00</option>
                            <option ${start_time_preselected[2]}>11:00</option>
                            <option ${start_time_preselected[3]}>12:00</option>
                            <option ${start_time_preselected[4]}>13:00</option>
                            <option ${start_time_preselected[5]}>14:00</option>
                            <option ${start_time_preselected[6]}>15:00</option>
                            <option ${start_time_preselected[7]}>16:00</option>
                            <option ${start_time_preselected[8]}>17:00</option>
                            <option ${start_time_preselected[9]}>18:00</option>
                        </select>
                        <select class="carousel form-control" id="endTime" name="endTime">
                            <option ${end_time_preselected[0]}>10:00</option>
                            <option ${end_time_preselected[1]}>11:00</option>
                            <option ${end_time_preselected[2]}>12:00</option>
                            <option ${end_time_preselected[3]}>13:00</option>
                            <option ${end_time_preselected[4]}>14:00</option>
                            <option ${end_time_preselected[5]}>15:00</option>
                            <option ${end_time_preselected[6]}>16:00</option>
                            <option ${end_time_preselected[7]}>17:00</option>
                            <option ${end_time_preselected[8]}>18:00</option>
                            <option ${end_time_preselected[9]}>19:00</option>
                        </select>
                        <div class="form-group"> <!-- Submit button -->
                            <button class="btn btn-primary " name="submit" value="submit" type="submit">Modifier</button>
                        </div>
                    </form>
					<c:if test="${not empty msg}">
						<p>${msg}</p>
					</c:if>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="webjars/jquery/3.1.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
