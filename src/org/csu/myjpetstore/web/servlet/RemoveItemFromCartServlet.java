package org.csu.myjpetstore.web.servlet;

import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Cart;
import org.csu.myjpetstore.domain.Item;
import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.persistence.SerializeUtil;
import org.csu.myjpetstore.persistence.impl.CartDAOImpl;
import org.csu.myjpetstore.service.LogService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class RemoveItemFromCartServlet extends HttpServlet {
    private String workingItemId;
    private static final String VIEW_CART = "/WEB-INF/jsp/cart/Cart.jsp";
    private static final String ERROR_PAGE = "/WEB-INF/jsp/common/Error.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        workingItemId = request.getParameter("workingItemId");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        Account account = (Account) session.getAttribute("account");
        Item item = cart.removeItemById(workingItemId);
        new CartDAOImpl().updateCart(account.getUsername(), SerializeUtil.serialize(cart));
        if (item == null) {
            session.setAttribute("msg", "Attempted to remove null CartItem from Cart.");
            request.getRequestDispatcher(ERROR_PAGE).forward(request, response);
        } else {
            request.getRequestDispatcher(VIEW_CART).forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
