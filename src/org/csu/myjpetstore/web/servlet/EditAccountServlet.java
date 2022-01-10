package org.csu.myjpetstore.web.servlet;

import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.service.AccountService;
import org.csu.myjpetstore.service.LogService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class EditAccountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");

        if (account == null) {
            request.getRequestDispatcher("loginForm").forward(request, response);
            return;
        }

        String password = request.getParameter("password");
        String repeatedPassword = request.getParameter("repeatedPassword");
        if (password.equals(repeatedPassword)) {
            account.setPassword(password);
        }

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

        AccountService accountService = new AccountService();
        accountService.updateAccount(account);
        account = accountService.getAccount(account.getUsername());
        session.setAttribute("account", account);
        request.getRequestDispatcher("editAccountForm").forward(request, response);
    }
}
