package org.csu.myjpetstore.web.servlet;

import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.service.LogService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class EditAccountFormServlet extends HttpServlet {
    private static final String EDIT_ACCOUNT_FORM = "/WEB-INF/jsp/account/EditAccountForm.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        new LogService().addLog(new Log(account != null ? account.getUsername() : "", request.getRequestURI() + " " + (request.getQueryString() == null ? "" : request.getQueryString()), Log.operation.NULL));

        if (account == null) {
            request.getRequestDispatcher("loginForm").forward(request, response);

        } else {
            request.getRequestDispatcher(EDIT_ACCOUNT_FORM).forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
