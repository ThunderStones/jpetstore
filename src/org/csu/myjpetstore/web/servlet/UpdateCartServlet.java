package org.csu.myjpetstore.web.servlet;

import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Cart;
import org.csu.myjpetstore.domain.CartItem;
import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.persistence.SerializeUtil;
import org.csu.myjpetstore.persistence.impl.CartDAOImpl;
import org.csu.myjpetstore.service.LogService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Iterator;

public class UpdateCartServlet extends HttpServlet {

    private static final String VIEW_CART = "/WEB-INF/jsp/cart/Cart.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        Iterator cartItems = cart.getAllCartItems();
        Account account = (Account) session.getAttribute("account");
        while (cartItems.hasNext()) {
            CartItem cartItem = (CartItem) cartItems.next();
            String itemId = cartItem.getItem().getItemId();

            int quantity = Integer.parseInt(request.getParameter(itemId));
            cart.setQuantityByItemId(itemId, quantity);
            if (quantity < 1) {
                cartItems.remove();
            }
        }
        new CartDAOImpl().updateCart(account.getUsername(), SerializeUtil.serialize(cart));
        new LogService().addLog(new Log(account.getUsername(), request.getRequestURI() + " " + (request.getQueryString() == null ? "" : request.getQueryString()), Log.operation.MODIFY));
        request.getRequestDispatcher(VIEW_CART).forward(request, response);

    }
}
