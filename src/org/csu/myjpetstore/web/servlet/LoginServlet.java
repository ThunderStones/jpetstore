package org.csu.myjpetstore.web.servlet;

import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Cart;
import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.domain.Product;
import org.csu.myjpetstore.persistence.CartDAO;
import org.csu.myjpetstore.persistence.SerializeUtil;
import org.csu.myjpetstore.persistence.impl.AccountDAOImpl;
import org.csu.myjpetstore.persistence.impl.CartDAOImpl;
import org.csu.myjpetstore.service.AccountService;
import org.csu.myjpetstore.service.CatalogService;
import org.csu.myjpetstore.service.LogService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class LoginServlet extends HttpServlet {
    private String username;
    private String password;
    private Account account;
    private List<Product> myList;
    private boolean authenticated = false;
    private final AccountService accountService = new AccountService();
    private final CatalogService catalogService = new CatalogService();
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
            request.getRequestDispatcher("loginPage").forward(request, response);
            return;
        }
        username = request.getParameter("username");
        password = request.getParameter("password");
        account = accountService.getAccount(username, password);
        new LogService().addLog(new Log(account.getUsername(), request.getRequestURI() + " " + (request.getQueryString() == null ? "" : request.getQueryString()), Log.operation.QUERY));
        if (account == null) {
            request.setAttribute("msg", "Invalid username or password.  Signon failed.");
            account = new Account();
            request.getRequestDispatcher("loginPage").forward(request,response);
        } else {
            account.setPassword(null);
            myList = catalogService.getProductListByCategory(account.getFavouriteCategoryId());
            authenticated = true;
            HttpSession session = request.getSession();
            session.setAttribute("account", account);
            session.setAttribute("myList", myList);
            session.setAttribute("isAuthenticated", authenticated);
            Cart cart = null;
            try {
                CartDAOImpl cartDAO = new CartDAOImpl();
                byte[] bytes = cartDAO.getCartString(account.getUsername());
                if (bytes == null) {
                    cart = new Cart();
                    cartDAO.insertCart(account.getUsername(), SerializeUtil.serialize(cart));
                } else {
                    cart = (Cart) SerializeUtil.serializeToObject(bytes);
                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            session.setAttribute("cart", cart);
            request.getRequestDispatcher("main").forward(request, response);
        }
    }
}
