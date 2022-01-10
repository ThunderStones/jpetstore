<%@ include file="../common/IncludeTop.jsp"%>

<div id="BackLink"><a href="main">
	Return to Main Menu
</a></div>

<div id="Catalog">

<table class="searchResult">
	<tr class="head">
		<th>Description</th>
		<th>Product ID</th>
		<th>Name</th>
	</tr>
	<c:forEach var="product" items="${sessionScope.productList}">
		<tr>
			<td><a href="viewProduct?productId=${product.productId}">
				${product.description}
			</a></td>
			<td><b> <a href="viewProduct?productId=${product.productId}">
				<font color="BLACK"> ${product.productId} </font>
			</a> </b></td>
			<td>${product.name}</td>
		</tr>
	</c:forEach>


</table>

</div>

<%@ include file="../common/IncludeBottom.jsp"%>




