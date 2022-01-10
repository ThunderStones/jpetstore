package org.csu.myjpetstore.web.servlet;

import com.sun.org.apache.xpath.internal.operations.Or;
import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Cart;
import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.domain.Order;
import org.csu.myjpetstore.service.LogService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class NewOrderFormServlet extends HttpServlet {
    private static final String ERROR_PAGE = "/WEB-INF/jsp/common/Error.jsp";
    private static final String NEW_ORDER_FORM = "/WEB-INF/jsp/order/NewOrderForm.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        Cart cart = (Cart) session.getAttribute("cart");
        Order order = new Order();
        session.setAttribute("order", order);
        session.setAttribute("shippingAddressRequired", false);
        session.setAttribute("confirmed", false);
        session.setAttribute("orderList", null);
        if (account == null) {
            request.setAttribute("msg", "You must sign on before attempting to add it to cart.  Please sign on and try checking out again.");
            request.getRequestDispatcher("loginPage").forward(request, response);
            return;
        }
        if (cart == null) {
            request.setAttribute("msg", "An order could not be created because a cart could not be found.");
            request.getRequestDispatcher(ERROR_PAGE).forward(request, response);
            return;
        }
        order.initOrder(account, cart);
        request.getRequestDispatcher(NEW_ORDER_FORM).forward(request, response);

    }
}
