package org.csu.myjpetstore.web.servlet;

import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Item;
import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.domain.Product;
import org.csu.myjpetstore.service.CatalogService;
import org.csu.myjpetstore.service.LogService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class ViewProductServlet extends HttpServlet {
    private static String productId;
    private static final String VIEW_PRODUCT = "/WEB-INF/jsp/catalog/Product.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        productId = request.getParameter("productId");

        CatalogService catalogService = new CatalogService();
        Product product = catalogService.getProduct(productId);
        List<Item> itemList = catalogService.getItemListByProduct(productId);

        String username;
        if (request.getSession().getAttribute("account") == null)
            username = "";
        else
            username = ((Account) request.getSession().getAttribute("account")).getUsername();
        new LogService().addLog(new Log(username, request.getRequestURI() + " " + (request.getQueryString() == null ? "" : request.getQueryString()), Log.operation.QUERY));

        HttpSession session = request.getSession();
        session.setAttribute("product", product);
        session.setAttribute("itemList", itemList);

        request.getRequestDispatcher(VIEW_PRODUCT).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
