<%-- 
    Document   : contact
    Created on : Mar 1, 2020, 8:45:39 PM
    Author     : viettqhe130524
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
        <link rel="stylesheet" type="text/css" href="./public/css/style.css" />
        <link rel="stylesheet" type="text/css" href="./public/css/contact-page.css" />

    </head>
    <body>
        <div class="wrap-all mb-5">
            <%@include file="/components/header.jsp" %>
            <!--Content-->
            <div class="wrap-content">
                <div class="container flex">
                    <div class="left">
                        <div class="px-3">
                            <p class="pt-5 mt-0 text-6">Find maria's Cafe</p>                   
                            <div class="flex font-sans split-bottom pb-5">
                                <div>
                                    <!--Show the contact-->
                                    <p class="text-4 font-bold font-serif left-contact">Address and contact:</p>
                                    <p>${contactPhone.key}: ${contactPhone.value}</p>
                                    <p>${contactEmail.key}: ${contactEmail.value}</p>
                                </div>
                                <div>
                                    <p class="text-4 font-bold font-serif">Opening hour:</p>
                                    <ul class="list-reset">
                                        <c:forEach var="work" items="${Work}">
                                            <li>${work.key}: ${work.value}</li>
                                            </c:forEach>
                                    </ul>
                                </div>
                            </div>
                            <!--Show the map of areas-->
                            <section id="map">
                                <div id="gmap"></div>
                                <script>
                                    function myMap() {
                                        var myCenter = new google.maps.LatLng(20.717114, 106.158188);
                                        var mapCanvas = document.getElementById("gmap");
                                        var mapOptions = {
                                            center: myCenter,
                                            zoom: 15
                                        };
                                        var map = new google.maps.Map(mapCanvas, mapOptions);
                                        var marker = new google.maps.Marker({
                                            position: myCenter
                                        });
                                        marker.setMap(map);
                                        var infowindow = new google.maps.InfoWindow({
                                            content: "viettqhe130524"
                                        });
                                        infowindow.open(map, marker);
                                    }
                                </script>
                                <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2LlIj3sk2akFpnpNcXzX9_NS08Xda1sE&callback=myMap"></script>
                            </section>
                        </div>
                    </div>
                    <%@include file="/components/right.jsp" %>
                </div>
            </div>
            <hr>
            <!--Footer-->
            <footer class="footer">
                <%@include file="/components/footer.jsp" %>
            </footer>
        </div>
    </body>
</html>
