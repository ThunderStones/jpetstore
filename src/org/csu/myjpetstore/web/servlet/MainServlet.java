package org.csu.myjpetstore.web.servlet;

import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.service.LogService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class MainServlet extends HttpServlet {
    private static final String MAIN = "/WEB-INF/jsp/catalog/Main.jsp";
    public List<String> languages;
    public List<String> categories;
    public List<String> cardList;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        languages = new ArrayList<>();
        languages.add("Chinese");
        languages.add("English");
        languages.add("Japanese");
        categories = new ArrayList<>();
        categories.add("FISH");
        categories.add("DOGS");
        categories.add("REPTILES");
        categories.add("CATS");
        categories.add("BIRDS");
        cardList = new ArrayList<>();
        cardList.add("Visa");
        cardList.add("MasterCard");
        cardList.add("American Express");
        request.getSession().setAttribute("languages", languages);
        request.getSession().setAttribute("categories", categories);
        request.getSession().setAttribute("creditCardTypes", cardList);

        request.getRequestDispatcher(MAIN).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
