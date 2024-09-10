<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<table id="siteTitleArea">
    <tr>
        <td>
            <table id="siteTitleArea2">
                <tr>
                    <td id="siteTitle" align="center">
                        <a href="${pageContext.request.contextPath}/index.go">
                            Bizone
                        </a>
                    </td>
                </tr>
                <tr>
                    <td id="greetMsg">
                        <c:if test="${sessionScope.loginMember.bm_id != null }">
                            ${sessionScope.loginMember.bm_name}(${sessionScope.loginMember.bm_id})님 환영합니다.
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td id="resultTd">${r }</td>
                </tr>
                <tr>
                    <td id="siteSubTitle" align="right">
                        <h1>당신의 대박을 위한 사이트</h1>
                    </td>
                </tr>
            </table>
            <table id="siteMenuArea">
                <tr>
                    <td align="center">
                        <table id="siteMenuArea2">
                            <tr>
                                <td><a href=""><img src="images/menu1.png"></a></td>
                                <td><a href=""><img src="images/menu2.png"></a></td>
                                <td><a href=""><img src="images/menu3.png"></a></td>
                                <td><a href=""><img src="images/menu4.png"></a></td>
                            </tr>
                        </table>
                        <table id="siteLoginArea">
                            <tr>
                                <td>
                                    <c:choose>
                                        <c:when test="${sessionScope.loginMember.bm_id == null }">
                                            <a href="${pageContext.request.contextPath}/member.login.go">
                                                <img src="images/login.png">
                                            </a>
                                        </c:when>
                                        <c:otherwise>
                                            <a id="logoutBtn" href="${pageContext.request.contextPath}/member.logout">
                                                <img src="images/logout.png">
                                            </a>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                            </tr>
                        </table>
                        <table id="siteSignupArea">
                            <tr>
                                <td>
                                    <c:choose>
                                        <c:when test="${sessionScope.loginMember.bm_id == null }">
                                            <a href="${pageContext.request.contextPath}/member.signup.go">
                                                <img src="images/signup.png">
                                            </a>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="${pageContext.request.contextPath}/member.info.go">
                                                <img src="images/info.png">
                                            </a>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<table id="siteContextArea">
    <tr>
        <td align="center">
            <jsp:useBean id="cp" scope="request" type="javax.servlet.http.HttpServletRequest"/>
            <jsp:include page="${cp }"/>
        </td>
    </tr>
</table>
</body>
</html>
