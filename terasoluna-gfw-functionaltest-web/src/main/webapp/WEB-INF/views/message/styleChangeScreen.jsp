<c:if test="${disableCss == 'false'}">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendor/kube/css/kube.css"
	type="text/css" media="screen, projection">
</c:if>
    <h2>Output Message</h2>
    <t:messagesPanel panelClassName="message"
         panelTypeClassPrefix="message-" outerElement="" innerElement=""/>
