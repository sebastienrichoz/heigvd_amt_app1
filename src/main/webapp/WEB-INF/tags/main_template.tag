<%@tag description="Main template" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="title"%>
<%@attribute name="content" fragment="true" %>

<!doctype html>
<html class="no-js" lang="en">
<head>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/css/foundation.min.css" />
    <title>${title}</title>
</head>
<body>
    <header>
        <div class="top-bar">
            <div class="top-bar-left">
                <ul class="menu">
                    <li class="menu-text">Les Courgettes</li>
                </ul>
            </div>
            <div class="top-bar-right">
                <ul class="menu">
                    <li><a href="${pageContext.request.contextPath}/">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin">Admin</a></li>
                    <c:choose>
                        <c:when test="${not empty sessionScope.authUsername}">
                            <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="${pageContext.request.contextPath}/login">Login</a></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </div>
    </header>
    <br>
    <jsp:invoke fragment="content"/>
</body>
</html>