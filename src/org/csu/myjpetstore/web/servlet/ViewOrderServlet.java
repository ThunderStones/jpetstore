package org.csu.myjpetstore.web.servlet;

import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.domain.Order;
import org.csu.myjpetstore.service.LogService;
import org.csu.myjpetstore.service.OrderService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class ViewOrderServlet extends HttpServlet {
    private static final String VIEW_ORDER = "/WEB-INF/jsp/order/ViewOrder.jsp";
    private static final String ERROR_PAGE = "/WEB-INF/jsp/common/Error.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        Order order = new OrderService().getOrder(Integer.parseInt(request.getParameter("orderId")));
        session.setAttribute("order", order);

        if (account.getUsername().equals(order.getUsername())) {
            request.getRequestDispatcher(VIEW_ORDER).forward(request, response);
        } else {
            request.setAttribute("msg", "You may only view your own orders.");
            request.getRequestDispatcher(ERROR_PAGE).forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
