<html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="competencesBean" scope="request" class="fr.cs.javajstl.bean.CompetencesBean"/>
<fmt:setLocale value="en_en" scope="session"/>

<fmt:bundle basename="message">
    <head>
        <title><fmt:message key="skills"/></title>
    </head>
    <body bgcolor="#add8e6">
    <h1><fmt:message key="thanks"/></h1>
    <hr>
    <h3>
        <fmt:message key="hello">
            <fmt:param value="${competencesBean.nom}"/>
        </fmt:message></h3>
    <p></p>

    <h3><fmt:message key="mastered"/> :</h3>
    <div style="color: green">
    <ul>
        <c:forEach items="${competencesBean.competencesMaitrisees}" var="competence">
            <li>
                        ${competence}
            </li>
        </c:forEach>
    </ul>
    </div>
    <h3><fmt:message key="towork"/> :</h3>
    <div style="color: red">
        <ul>
            <c:forEach items="${competencesBean.competencesManquantes}" var="competence">
                <li>
                        ${competence}
                </li>
            </c:forEach>
        </ul>
    </div>
    </body>
</fmt:bundle>

</body>
</html>
