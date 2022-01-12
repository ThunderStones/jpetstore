<%@ include file="../common/IncludeTop.jsp" %>

<div id="Catalog">
    <form action="login" method="post">
        <div class="login">
            <h2>Login</h2>
            <div class="loginBox">
                <input type="text" name="username" value="j2ee" required/><label>Username</label>
            </div>
            <div class="loginBox">
                <input type="password" name="password" value="j2ee" required/><label>Password</label></div>
            <div class="loginBox">
                <input type="text" name="captchaCode" required><label>CaptchaCode</label><img src="image.jpg">
            </div>
            <font color="red">${msg}</font><br>
            <input type="submit" name="signon" value="Login" class="loginButton"/>
        </div>
    </form>
    Need a user name and password? <a href="registerPage">Register Now!</a>
</div>

<%@ include file="../common/IncludeBottom.jsp" %>

