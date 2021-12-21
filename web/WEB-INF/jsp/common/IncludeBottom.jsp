</div>

<div id="Footer">

  <div id="PoweredBy">&nbsp<a href="https://www.csu.edu.cn">www.csu.edu.cn</a>
  </div>

  <div id="Banner">
    <c:if test="${sessionScope.isAuthenticated}">
      <c:if test="${sessionScope.account.bannerOption}">
        ${sessionScope.account.bannerName}
      </c:if>
    </c:if>
<%--    <img src="images/banner_dogs.gif">--%>
  </div>

</div>

</body>
</html>