<%@ include file="../common/IncludeTop.jsp" %>

<div id="Catalog">
    <form action="login" method="post">
        <p>Please enter your username and password.</p>
        <p>Username:<input type="text" name="username" value="j2ee"/> <br/>
            Password:<input type="password" name="password" value="j2ee"/><br/>
        CaptchaCode:<input type="text" name="captchaCode"><br>
            <img src="${sessionScope.path}"></p>
        <font color="red">${msg}</font><br>
        <input type="submit" name="signon" value="Login"/>
    </form>
    Need a user name and password? <a href="registerPage">Register Now!</a>
</div>

<%@ include file="../common/IncludeBottom.jsp" %>

