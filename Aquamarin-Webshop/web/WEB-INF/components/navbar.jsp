<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav class="navbar navbar-expand-lg navbar-light mainNavColor">
    <div id="navbarContainer" class="container">
        <c:if test="${sessionScope.user.role != 'admin'}">
            <a class="navbar-brand" href="/Aquamarin-Webshop">
                <image class="logo" src="/Aquamarin-Webshop/static/resources/images/logo/logo2.png" alt="Aquamarin logo" /> 
            </a>            
        </c:if>
        <c:if test="${sessionScope.user.role == 'admin'}">
            <a class="navbar-brand" href="/Aquamarin-Webshop/admin/userLogs">
                <image class="logo" src="/Aquamarin-Webshop/static/resources/images/logo/logo2.png" alt="Aquamarin logo" /> 
            </a>            
        </c:if>
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <div class="ml-auto"></div>
            
            <c:if test="${sessionScope.user.role != 'admin'}">
                <div class="nav-item">
                    <a href="/Aquamarin-Webshop/cart" class="mainNavItem">
                        <i class="material-icons navIcon">shopping_cart</i>
                        <label id="cartItemsNumber">${sessionScope.cart.totalItems}</label>
                        <label id="cartLabel">Košarica</label>
                    </a>
                </div>
            </c:if>

            <c:choose>
                <c:when test="${sessionScope.user != null}">
                    <div class="dropdown nav-item loginNavItem">
                        <div id="loginUserOptions" class="mainNavItem" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="material-icons navIcon navIconUser">person</i>
                            <label id="loginLabel">Bok, ${sessionScope.user.username}!</label>
                        </div>                            

                        <div class="dropdown-menu dropdown-menu-right text-right userDropdownMenu" aria-labelledby="loginUserOptions">
                            <a class="dropdown-item userDropdownItem" href="#">
                                Moj profil <span class="material-icons align-bottom">perm_identity</span>
                            </a>

                            <c:if test="${sessionScope.user.role != 'admin'}">
                                <a class="dropdown-item userDropdownItem" href="/Aquamarin-Webshop/povijest">
                                    Povjest narudžbi <span class="material-icons align-bottom">history</span>
                                </a>
                            </c:if> 

                            <a id="logoutDropdownItem" class="dropdown-item userDropdownItem" href="/Aquamarin-Webshop/odjava">
                                Odjavi se <span class="material-icons align-bottom">exit_to_app</span>
                            </a>
                        </div>

                    </div>
                </c:when>
                <c:otherwise>
                    <div class="nav-item loginNavItem">
                        <a href="/Aquamarin-Webshop/prijava" class="mainNavItem">
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
            <ul id="categoryNav" class="navbar-nav w-100">
                <c:if test="${sessionScope.user.role != 'admin'}">
                    <li class="nav-item dropdown col-2">
                        <a class="nav-link dropdown-toggle catLabel" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Kategorije
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="/Aquamarin-Webshop/proizvodi/">Sve kategorije</a>
                            <div class="dropdown-divider"></div>
                            <c:forEach var="cat" items="${sessionScope.categories}">
                                <a class="dropdown-item" href="/Aquamarin-Webshop/proizvodi/${cat.name}">${cat.name}</a>
                            </c:forEach>
                        </div>
                    </li>
                    <li class="nav-item dropdown col-2">
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
                    <li class="nav-item dropdown col-2">
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
                    <li class="nav-item dropdown col-2">
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
                    <li class="nav-item dropdown col-2">
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
                    <li class="nav-item dropdown col-2">
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
                </c:if>
                <c:if test="${sessionScope.user.role == 'admin'}">
                    <li class="nav-item col-2">
                        <a class="nav-link catLabel" href="/Aquamarin-Webshop/admin/userLogs" role="button">
                            User logs
                        </a>
                    </li>
                    <li class="nav-item col-2">
                        <a class="nav-link catLabel" href="/Aquamarin-Webshop/admin/userOrders" role="button">
                            User orders
                        </a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>