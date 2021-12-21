package org.csu.myjpetstore.web.servlet;

import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.domain.Product;
import org.csu.myjpetstore.service.AccountService;
import org.csu.myjpetstore.service.CatalogService;
import org.csu.myjpetstore.service.LogService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.List;

public class RegisterServlet extends HttpServlet {
    Account account = new Account();
    private static final String REGISTER_PAGE = "/WEB-INF/jsp/account/NewAccountForm.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("captchaCode");
        String captCode = (String) request.getSession().getAttribute("capCode");
        if (!captCode.equalsIgnoreCase(code)) {
            request.setAttribute("msg", "incorrect CaptchaCode!");
            request.getRequestDispatcher("registerPage").forward(request, response);
            return;
        }

        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        account.setUsername(username);
        String password = request.getParameter("password");
        account.setPassword(password);
        String repeatedPassword = request.getParameter("repeatedPassword");
        String firstName = request.getParameter("account.firstName");
        account.setFirstName(firstName);
        String lastName = request.getParameter("account.lastName");
        account.setLastName(lastName);
        String email = request.getParameter("account.email");
        account.setEmail(email);
        String phone = request.getParameter("account.phone");
        account.setPhone(phone);
        String address1 = request.getParameter("account.address1");
        account.setAddress1(address1);
        String address2 = request.getParameter("account.address2");
        account.setAddress2(address2);
        String city = request.getParameter("account.city");
        account.setCity(city);
        String state = request.getParameter("account.state");
        account.setState(state);
        String zip = request.getParameter("account.zip");
        account.setZip(zip);
        String country = request.getParameter("account.country");
        account.setCountry(country);
        account.setLanguagePreference(request.getParameter("account.languagePreference"));
        account.setFavouriteCategoryId(request.getParameter("account.favouriteCategoryId"));
        account.setListOption("on".equals(request.getParameter("account.listOption")));
        account.setBannerOption("on".equals(request.getParameter("account.bannerOption")));

        new LogService().addLog(new Log(account.getUsername(), request.getRequestURI() + " " + request.getQueryString(), Log.operation.QUERY));

        request.getSession().setAttribute("account", account);
        request.setAttribute("repeatedPassword", repeatedPassword);
        if (username.isEmpty() || password.isEmpty() || repeatedPassword.isEmpty() ||
                firstName.isEmpty() || lastName.isEmpty() || email.isEmpty() ||
                phone.isEmpty() || address1.isEmpty() || address2.isEmpty() ||
                city.isEmpty() || state.isEmpty() || zip.isEmpty() || country.isEmpty()
        ) {
            request.setAttribute("msg", "Please fill all line.");
            request.getRequestDispatcher(REGISTER_PAGE).forward(request, response);
        } else if (!email.matches("^(\\w+([-.][A-Za-z0-9]+)*){3,18}@\\w+([-.][A-Za-z0-9]+)*\\.\\w+([-.][A-Za-z0-9]+)*$")) {
            request.setAttribute("msg", "Incorrect email.");
            request.getRequestDispatcher(REGISTER_PAGE).forward(request, response);
        } else if (!repeatedPassword.equals(password)) {
            request.setAttribute("msg", "Two input password must be consistent");
            request.getRequestDispatcher(REGISTER_PAGE).forward(request, response);
        }else {
            new LogService().addLog(new Log(account.getUsername(), request.getRequestURI() + " " + (request.getQueryString() == null ? "" : request.getQueryString()), Log.operation.ADD));

            AccountService accountService = new AccountService();
            accountService.insertAccount(account);
            account = accountService.getAccount(account.getUsername());
            List<Product> myList = new CatalogService().getProductListByCategory(account.getFavouriteCategoryId());

            HttpSession session = request.getSession();
            session.setAttribute("account", account);
            session.setAttribute("myList", myList);
            session.setAttribute("isAuthenticated", true);

            request.getRequestDispatcher("main").forward(request, response);
        }
    }
}
