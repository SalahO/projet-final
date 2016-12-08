<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<div class="inner cover">
    <h1 class="cover-heading"><c:out value="${message }"></c:out></h1>
    <p class="lead">Bienvenue dans l'outil de gestion des ressources de Simplon</p>
    <p class="lead">
         <a href="/classroom/formAdd" class="btn btn-lg btn-default">Réserver une salle</a>
         <a href="/laptops/formAdd" class="btn btn-lg btn-default">Réserver un ordinateur</a>
    </p>
</div>