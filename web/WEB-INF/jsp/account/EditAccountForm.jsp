<%@ include file="../common/IncludeTop.jsp" %>

<div id="Catalog">
    <form action="editAccount" method="post">

        <h3>User Information</h3>

        <table>
            <tr>
                <td>User ID:</td>
                <td>${sessionScope.account.username}</td>
            </tr>
            <tr>
                <td>New password:</td>
                <td><input type="text" name="password"/></td>
            </tr>
            <tr>
                <td>Repeat password:</td>
                <td><input type="text" name="repeatedPassword"/></td>
            </tr>
        </table>
        <%@ include file="IncludeAccountFields.jsp" %>

        <input type="submit" name="editAccount" value="Save Account Information"/>
    </form>
    <%--	listOrder--%>
    <a href="listOrder">My Orders</a>
</div>

<%@ include file="../common/IncludeBottom.jsp" %>
