<%--<script type="text/javascript"--%>
        <%--src="${pageContext.request.contextPath}/resources/vendor/js/jquery.js"></script>--%>
<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendor/js/jquery-1.7.2.js"></script>

<script type="text/javascript">
    $(function(){
        $(document).on("click", ".disabled a, .active a", function(){
            return false;
        });
    });
</script>

	<h1>${f:h(page.number) + 1} Page</h1>
	<div class="pagination">
		<t:pagination page="${page}" disabledHref="#"/>
	</div>
		<table class="maintable">
			<thead>
				<tr>
					<th>Number</th>
					<th>First Name</th>
					<th>Last Name</th>
				</tr>
			</thead>
			<c:forEach var="name" items="${page.content}" varStatus="sts">
				<tr>
					<td>${page.number * page.size + sts.index + 1}</td>
					<td>${f:h(name.firstname)}</td>
					<td>${f:h(name.lastname)}</td>
				</tr>
			</c:forEach>
		</table>
	<div class="pagination">
		<t:pagination page="${page}" disabledHref="#"/>
	</div>
