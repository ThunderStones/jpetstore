package org.csu.myjpetstore.web.servlet;

import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Category;
import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.domain.Product;
import org.csu.myjpetstore.service.CatalogService;
import org.csu.myjpetstore.service.LogService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class ViewCategoryServlet extends HttpServlet {
    private static final String VIEW_CATEGORY = "/WEB-INF/jsp/catalog/Category.jsp";
    private String categoryId;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        categoryId = request.getParameter("categoryId");
        CatalogService catalogService = new CatalogService();
        Category category = catalogService.getCategory(categoryId);
        List<Product> productList = catalogService.getProductListByCategory(categoryId);
        String username;
        if (request.getSession().getAttribute("account") == null)
            username = "";
        else
            username = ((Account) request.getSession().getAttribute("account")).getUsername();
        new LogService().addLog(new Log(username, request.getRequestURI() + " " + (request.getQueryString() == null ? "" : request.getQueryString()), Log.operation.QUERY));
        HttpSession session = request.getSession();
        session.setAttribute("category", category);
        session.setAttribute("productList", productList);

        request.getRequestDispatcher(VIEW_CATEGORY).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
