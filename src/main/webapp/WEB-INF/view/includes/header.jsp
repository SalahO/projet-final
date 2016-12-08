<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

 	 <div class="masthead clearfix">
     	<div class="inner">
        	<h3 class="masthead-brand">LOGO HERE</h3>
            <nav>
		            <%--<li><button type="submit" class="btn btn-success">Sign up</button></li>--%>
		            <%--<li><button type="submit" class="btn btn">Sign in</button></li>--%>
					<ul class="nav masthead-nav">
						<li class="active"><a href="/">Home</a></li>
						<security:authorize access="hasAuthority('ADMIN')">
							<li>
								<div class="dropdown">
									<button class="btn  btn-lg dropdown-toggle" type="button" data-toggle="dropdown">Gestion
										<span class="caret"></span></button>
									<ul class="dropdown-menu">
										<li><a href="/reservations">RESERVATIONS</a></li>
										<li><a href="/users">UTILISATEURS</a></li>
									</ul>
								</div>
							</li>
						</security:authorize>
						<security:authorize access="isAuthenticated()">
							<li><a href="/users/profil">
                           <span class="glyphicon glyphicon-user" aria-hidden="true"> Username<span class="caret dropdown-toggle"></span>
                           </span>
									<%--<security:authorize access="isAuthenticated()">--%>
									<%--<security:authentication property="principal.username" />--%>
									<%--</security:authorize>--%>
							</a></li>
							<li><a href="/logout" class="btn btn-lg btn-danger">Logout</a></li>
						</security:authorize>

						<security:authorize access="!isAuthenticated()">
							<li><a href="/users/form/adduser"   class="btn btn-lg btn-success">Sign up</a></li>
							<li><a href="/login" class="btn btn-lg btn-info login">Login</a></li>
						</security:authorize>
					</ul>
            </nav>
         </div>
    </div>
