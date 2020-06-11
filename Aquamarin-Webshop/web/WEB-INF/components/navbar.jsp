<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8; ">

        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="static/styles/navbar.css" type="text/css">

    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-light mainNavColor">
            <div id="navbarContainer" class="container">
                <a class="navbar-brand" href="pocetna">
                    <image class="logo" src="static/resources/images/logo2.png" alt="Aquamarin logo" /> 
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    
                    <div class="nav-item ml-auto">
                        <a href="#" class="mainNavItem">
                            <i class="material-icons navIcon">shopping_cart</i>
                            <label id="cartItemsNumber">0</label>
                            <label id="cartLabel">Košarica</label>
                        </a>
                    </div>
                    
                    <c:choose>
                        <c:when test="${sessionScope.uid != null}">
                            <div class="dropdown nav-item loginNavItem">
                                <div id="loginUserOptions" class="mainNavItem" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="material-icons navIcon navIconUser">person</i>
                                    <label id="loginLabel">Bok, ${sessionScope.uid}!</label>
                                </div>                            
                                
                                <div class="dropdown-menu dropdown-menu-right text-right userDropdownMenu" aria-labelledby="loginUserOptions">
                                    <a class="dropdown-item userDropdownItem" href="#">
                                        Moj profil <span class="material-icons align-bottom">perm_identity</span>
                                    </a>
                                    
                                    <a class="dropdown-item userDropdownItem" href="#">
                                        Povjest narudžbi <span class="material-icons align-bottom">history</span>
                                    </a>
                                    
                                    <a id="logoutDropdownItem" class="dropdown-item userDropdownItem" href="odjava">
                                        Odjavi se <span class="material-icons align-bottom">exit_to_app</span>
                                    </a>
                                </div>
                                
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="nav-item loginNavItem">
                                <a href="prijava" class="mainNavItem">
                                    <i class="material-icons navIcon navIconUser">person</i>
                                    <label id="loginLabel">Prijavi se!</label>
                                </a>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </nav>
        
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div id="navbarContainer" class="container">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="categoryNav" class="navbar-nav w-100 d-flex justify-content-between">
                        <li class="nav-item dropdown flex-fill">
                            <a class="nav-link dropdown-toggle catLabel" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Dropdown
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown flex-fill">
                            <a class="nav-link dropdown-toggle catLabel" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Dropdown
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown flex-fill">
                            <a class="nav-link dropdown-toggle catLabel" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Dropdown
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown flex-fill">
                            <a class="nav-link dropdown-toggle catLabel" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Dropdown
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown flex-fill">
                            <a class="nav-link dropdown-toggle catLabel" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Dropdown
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </body>
</html>
