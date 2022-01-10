package org.csu.myjpetstore.web.servlet;

import com.alibaba.fastjson.JSON;
import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Item;
import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.domain.Product;
import org.csu.myjpetstore.service.CatalogService;
import org.csu.myjpetstore.service.LogService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class SearchServlet extends HttpServlet {
    private String keywords;
    private static final String SEARCH_PRODUCT = "/WEB-INF/jsp/catalog/SearchProducts.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        keywords = request.getParameter("keyword");
        String requestType = request.getParameter("requestType");
        String username;
        if (request.getSession().getAttribute("account") == null)
            username = "";
        else
            username = ((Account) request.getSession().getAttribute("account")).getUsername();
        CatalogService service = new CatalogService();
        List<Product> productList = service.searchProductList(keywords);

        if (!"ajax".equals(requestType)){
            HttpSession session = request.getSession();
            session.setAttribute("productList", productList);
            request.getRequestDispatcher(SEARCH_PRODUCT).forward(request, response);
        } else {
            response.setContentType("application/json;charset=UTF-8");
            PrintWriter out = response.getWriter();
            String jsonString = JSON.toJSONString(productList);
            out.write(jsonString);
            out.flush();
            out.close();
        }
    }
}
