<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container">
    <form class="form-signin" action="/users/addUser">
        <fieldset>

            <!-- Form Name -->
            <legend>Ajouter un compte utilisateur</legend>

            <!-- Text input-->
            <div class="form-group">
                <div class="col-md-12">
                    <input id="surname" name="surname" type="text" placeholder="Entrer votre prénom" class="form-control input-md" required="">

                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <div class="col-md-12">
                    <input id="name" name="name" type="text" placeholder="Entrer un nom" class="form-control input-md" required="">

                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <div class="col-md-12">
                    <input id="email" name="email" type="text" placeholder="Entrer votre email" class="form-control input-md" required="">
                </div>
            </div>

            <!-- Password input-->
            <div class="form-group">
                <div class="col-md-12">
                    <input id="password" name="password" type="password" placeholder="Entrer un mot de passe" class="form-control input-md" required="">
                </div>
            </div>

            <!-- Select Basic -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="role"></label>
                <div class="col-md-12">
                    <select id="role" name="role" class="form-control">
                        <option value="USER">USER</option>
                        <option value="ADMIN">ADMIN</option>
                    </select>
                </div>
            </div>

            <!-- Button -->
            <div class="form-group">
                <label class="col-md-12 control-label" for="submit"></label>
                <div class="col-md-12">
                    <button id="submit" name="submit" class="btn btn-lg btn-success btn-block">Ajouter</button>
                </div>
            </div>

            <!-- Select Basic -->
        </fieldset>
    </form>
</div> <!-- /container -->
