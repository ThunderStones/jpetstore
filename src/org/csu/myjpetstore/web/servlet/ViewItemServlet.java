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

public class ViewItemServlet extends HttpServlet {
    private String itemId;
    private static final String VIEW_ITEM = "/WEB-INF/jsp/catalog/Item.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        itemId = request.getParameter("itemId");

        CatalogService service = new CatalogService();
        Item item = service.getItem(itemId);
        Product product = item.getProduct();

        HttpSession session = request.getSession();
        session.setAttribute("product", product);
        session.setAttribute("item", item);
        request.getRequestDispatcher(VIEW_ITEM).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
