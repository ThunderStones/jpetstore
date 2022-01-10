package org.csu.myjpetstore.web.servlet;

import org.csu.myjpetstore.persistence.impl.AccountDAOImpl;
import org.csu.myjpetstore.service.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class UsernameExistServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        response.setContentType("text/plain");
        PrintWriter printWriter = response.getWriter();
        if (username.isEmpty() || new AccountService().accountIsExist(username)) {
            printWriter.write("Exist");
        } else{
            printWriter.write("Not Exist");
        }
        printWriter.flush();
        printWriter.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
