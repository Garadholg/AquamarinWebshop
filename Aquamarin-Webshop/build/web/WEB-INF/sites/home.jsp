<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="custom" uri="/WEB-INF/tlds/product.tld" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8; width=device-width; initial-scale=1">
        <title>Aquamarin | Web Shop</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="static/styles/slick.css" type="text/css">
        <link rel="stylesheet" href="static/styles/slick-theme.css" type="text/css">
        <link rel="stylesheet" href="static/styles/navbar.css" type="text/css">
        <link rel="stylesheet" href="static/styles/home.css" type="text/css">
        <link rel="stylesheet" href="static/styles/product.css" type="text/css">

        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <script src="static/scripts/slick.min.js"></script>
        <script src="static/scripts/home.js"></script>

    </head>
    <body>                    
        <jsp:include page="../components/navbar.jsp" />
        <div id="contentContainer" class="container">
            <form class="form-inline justify-content-center searchForm">
                <input class="searchInput" type="text" placeholder="Pretraži artikle..." aria-label="Search">
                <button class="searchButton" type="submit">
                    <svg class="bi bi-search" width="24px" height="24px" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M10.442 10.442a1 1 0 011.415 0l3.85 3.85a1 1 0 01-1.414 1.415l-3.85-3.85a1 1 0 010-1.415z" clip-rule="evenodd"/>
                        <path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 100-11 5.5 5.5 0 000 11zM13 6.5a6.5 6.5 0 11-13 0 6.5 6.5 0 0113 0z" clip-rule="evenodd"/>
                    </svg>
                </button>
            </form>
            

            <div id="homeCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#homeCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#homeCarousel" data-slide-to="1"></li>
                    <li data-target="#homeCarousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="https://cdn.wallpapersafari.com/74/45/vinF2d.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="https://i.pinimg.com/originals/2d/bc/f0/2dbcf0f51818bf7ff90be59e6bd694c8.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="https://cdn.wallpapersafari.com/56/33/FCIhJx.jpg" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev carouselNav" href="#homeCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next carouselNav" href="#homeCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            
            <div>
                <div class="sectionHeader">
                    <p class="sectionHeaderLabel">Izdvojeni proizvodi</p>
                </div>

                <div class="highlight-products-slider">
                    <c:forEach var="product" items="${requestScope.productList}">
                        <custom:product image="${product.primaryImage.path}" productID="${product.id}" brand="${product.brand.name}" productName="${product.productName}" />
                    </c:forEach>
                </div>
                
            </div>

        </div>
    </body>
    
</html>
