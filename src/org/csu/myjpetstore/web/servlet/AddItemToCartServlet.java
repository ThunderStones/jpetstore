package org.csu.myjpetstore.web.servlet;

import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Cart;
import org.csu.myjpetstore.domain.Item;
import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.persistence.SerializeUtil;
import org.csu.myjpetstore.persistence.impl.CartDAOImpl;
import org.csu.myjpetstore.service.CatalogService;
import org.csu.myjpetstore.service.LogService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class AddItemToCartServlet extends HttpServlet {
    private String workingItemId;
    private CatalogService catalogService;
    private static final String JUMP_TO_CART = "/WEB-INF/jsp/cart/Cart.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        workingItemId = request.getParameter("workingItemId");
        catalogService = new CatalogService();
        LogService logService = new LogService();
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        Account account = (Account) request.getSession().getAttribute("account");
        new LogService().addLog(new Log(account != null ? account.getUsername() : "", request.getRequestURI() + " " + (request.getQueryString() == null ? "" : request.getQueryString()), Log.operation.QUERY));

//        logService.addLog(new Log(account.getUsername(), getServletContext().getContextPath()));
//        boolean isAuth = (boolean) request.getSession().getAttribute("isAuthenticated");
        if (account == null) {
            request.setAttribute("msg", "You must sign on before attempting to check out.  Please sign on and try checking out again.");
            request.getRequestDispatcher("loginPage").forward(request, response);
            return;
        }
        if (cart == null) {
            cart = new Cart();
        }
        if (workingItemId == null) {
            request.getSession().setAttribute("cart", cart);
            request.getRequestDispatcher(JUMP_TO_CART).forward(request, response);
            return;
        }
        if (cart.containsItemId(workingItemId)) {
            cart.incrementQuantityByItemId(workingItemId);
        } else {
            boolean isInStock = catalogService.isItemInStock(workingItemId);
            Item item = catalogService.getItem(workingItemId);
            cart.addItem(item, isInStock);
        }
        request.getSession().setAttribute("cart", cart);
        new CartDAOImpl().updateCart(((Account) request.getSession().getAttribute("account")).getUsername(), SerializeUtil.serialize(cart));
        request.getRequestDispatcher(JUMP_TO_CART).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
