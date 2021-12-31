package org.csu.myjpetstore.web.servlet;

import com.alibaba.fastjson.JSON;
import org.csu.myjpetstore.domain.Product;
import org.csu.myjpetstore.persistence.impl.CateDAOImpl;
import org.csu.myjpetstore.service.CatalogService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class PreviewCategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String categoryId = request.getParameter("categoryId");
        response.setContentType("application/json");
        List<Product> productList = new CatalogService().getProductListByCategory(categoryId);
        PrintWriter out = response.getWriter();
        out.write(JSON.toJSONString(productList));
        out.flush();
        out.close();
    }
}
