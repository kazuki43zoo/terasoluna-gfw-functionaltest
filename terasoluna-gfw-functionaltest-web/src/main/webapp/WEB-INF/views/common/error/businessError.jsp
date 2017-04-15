<!DOCTYPE html>
<html>
<head>
<title>Business Error</title>
<c:if test="${disableCss == 'false'}">
<link rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/app/css/style.css"
      type="text/css" media="screen, projection">
</c:if>
</head>
<body>
    <div class="wrapper">
        <h2>Business Error...</h2>
        <h3 id="exceptionCode">${f:h(exceptionCode)}</h3>
        <t:messagesPanel />
        <hr>
        <p style="text-align: center; background: #e5eCf9;">
             <spring:message code="copyright" htmlEscape="false" />
            (X-Track:${f:h(requestScope["X-Track"])})</p>
    </div>
</body>
</html>