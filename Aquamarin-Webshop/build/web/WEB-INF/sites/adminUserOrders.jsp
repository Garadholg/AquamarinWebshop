<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aquamarin | Administrator User Orders</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
        <link rel="stylesheet" href="/Aquamarin-Webshop/static/styles/navbar.css" type="text/css">
        <link rel="stylesheet" href="/Aquamarin-Webshop/static/styles/adminUserOrders.css" type="text/css">

        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
        <script src="/Aquamarin-Webshop/static/scripts/adminUserOrders.js"></script>
    </head>
    <body>
        <jsp:include page="../components/navbar.jsp" />
        <div id="contentContainer" class="container">
            <h1>User orders</h1>
            <table id="ordersTable" class="table">
                <thead class="ordersTableHead">
                    <tr>
                        <th scope="col">Broj narudžbe</th>
                        <th scope="col">Korisnik</th>
                        <th scope="col">Datum</th>
                        <th scope="col">Ukupna cijena</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${requestScope.ordersData}">
                        <tr>
                            <td class="tdItemID">${item.id}</td>
                            <td>${item.user.username}</td>
                            <td>${item.formattedDateTime}</td>
                            <td>${item.totalPrice} kn</td>
                            <td class="tdDetailsBtn"><button>Prikaži detalje</button></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
