package org.csu.myjpetstore.web.servlet;

import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Cart;
import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.service.LogService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class SignOutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        new LogService().addLog(new Log(account.getUsername(), request.getRequestURI() + " " + (request.getQueryString() == null ? "" : request.getQueryString()), Log.operation.NULL));
        session.setAttribute("isAuthenticated", false);
        session.setAttribute("account", null);
        session.setAttribute("myList", null);
        session.setAttribute("cart", new Cart());
        request.getRequestDispatcher("main").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
