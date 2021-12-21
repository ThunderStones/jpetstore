<h3>Account Information</h3>
<table>
    <tr>
        <td>First name:</td>
        <td><input type="text" name="account.firstName" value="${sessionScope.account.firstName}"/></td>
    </tr>
    <tr>
        <td>Last name:</td>
        <td><input type="text" name="account.lastName" value="${sessionScope.account.lastName}"/></td>
    </tr>
    <tr>
        <td>Email:</td>
        <td><input type="text" size="40" name="account.email" value="${sessionScope.account.email}"/></td>
    </tr>
    <tr>
        <td>Phone:</td>
        <td><input type="text" name="account.phone" value="${sessionScope.account.phone}"/></td>
    </tr>
    <tr>
        <td>Address 1:</td>
        <td><input type="text" size="40" name="account.address1" value="${sessionScope.account.address1}"/></td>
    </tr>
    <tr>
        <td>Address 2:</td>
        <td><input type="text" size="40" name="account.address2" value="${sessionScope.account.address2}"/></td>
    </tr>
    <tr>
        <td>City:</td>
        <td><input type="text" name="account.city" value="${sessionScope.account.city}"/></td>
    </tr>
    <tr>
        <td>State:</td>
        <td><input type="text" size="4" name="account.state" value="${sessionScope.account.state}"/></td>
    </tr>
    <tr>
        <td>Zip:</td>
        <td><input type="text" size="10" name="account.zip" value="${sessionScope.account.zip}"/></td>
    </tr>
    <tr>
        <td>Country:</td>
        <td><input type="text" size="15" name="account.country" value="${sessionScope.account.country}"/></td>
    </tr>
</table>

<h3>Profile Information</h3>

<table>
    <tr>
        <td>Language Preference:</td>
        <td><select name="account.languagePreference">
            <c:forEach var="language" items="${sessionScope.languages}">
                <c:choose>
                    <c:when test="${sessionScope.account.languagePreference eq language}">
                        <option value="${language}" selected>${language}</option>
                    </c:when>
                    <c:otherwise>
                        <option value="${language}">${language}</option>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </select></td>
    </tr>
    <tr>
        <td>Favourite Category:</td>
        <td><select name="account.favouriteCategoryId">
            <c:forEach var="category" items="${sessionScope.categories}">
                <c:choose>
                    <c:when test="${sessionScope.account.favouriteCategoryId eq category}">
                        <option value="${category}" selected>${category}</option>
                    </c:when>
                    <c:otherwise>
                        <option value="${category}">${category}</option>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </select></td>
    </tr>
    <tr>
        <td>Enable MyList</td>
        <td><label>
            <c:choose>
                <c:when test="${sessionScope.account.listOption}">
                    <input type="checkbox" name="account.listOption" checked />
                </c:when>
                <c:otherwise>
                    <input type="checkbox" name="account.listOption" />
                </c:otherwise>
            </c:choose>
        </label></td>
    </tr>
    <tr>
        <td>Enable MyBanner</td>
        <td><label>
            <c:choose>
                <c:when test="${sessionScope.account.bannerOption}">
                    <input type="checkbox" name="account.bannerOption" checked/>
                </c:when>
                <c:otherwise>
                    <input type="checkbox" name="account.bannerOption" />
                </c:otherwise>
            </c:choose>
        </label></td>
    </tr>

</table>
