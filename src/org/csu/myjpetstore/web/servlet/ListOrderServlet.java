package org.csu.myjpetstore.web.servlet;

import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.domain.Order;
import org.csu.myjpetstore.service.LogService;
import org.csu.myjpetstore.service.OrderService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class ListOrderServlet extends HttpServlet {
    private static final String LIST_ORDER = "/WEB-INF/jsp/order/ListOrders.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account account = (Account) request.getSession().getAttribute("account");
        if (account == null) {
            request.getRequestDispatcher("main").forward(request, response);
            return;
        }
        List<Order> orderList = new OrderService().getOrderByUsername(account.getUsername());
        request.getSession().setAttribute("orderList", orderList);
        request.getRequestDispatcher(LIST_ORDER).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
