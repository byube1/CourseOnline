<%-- 
    Document   : Course
    Created on : Nov 3, 2020, 3:16:40 PM
    Author     : WIN 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <section class="showtime">
            <div class="container">
                <H3 style="text-align: center; margin-top: 20px; color: #03a9f4">COURSE CATEGORIES</H3>
                <c:forEach var="cates" items="${cloneCATE }">
                    <ul class="nav nav-pills">
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="pill" href="#${cates.getCategoryID()}">${cates.getCategoryName() } </a>
                        </li>
                    </ul>
                    <!-- Tab panes -->
                    <%--<%@include file="Course.jsp" %>--%>
                    <div class="tab-content">
                        <c:forEach var="course" items="${cloneCOURSE }">
                            <c:if test = "${course.getCategoryID() eq cates.getCategoryID()}">
                                <div class="tab-pane container active" id="${cates.getCategoryID()}" >
                                    <div class="row">
                                        <div class="col-md-2">
                                            <img class="fluid" src="${course.getImg()}" alt="" />
                                        </div>
                                        <div class="col-md-10">
                                            <div class="showtime_detail">
                                                <h1>${course.getCourseName()}</h1>
                                                <p>
                                                    ${course.getCourseDescription()}
                                                </p>
                                                <h1 class="d-block mb-4">${course.getCoursePrice()} $</h1>
                                                <button class="btn btn-danger">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                    <hr />


                                </div>
                            </c:if>
                        </c:forEach>
                    </div>


                </c:forEach>
            </div>
        </section>
    </body>
</html>
