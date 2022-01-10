package org.csu.myjpetstore.web.filter;

import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.service.LogService;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LogFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpSession session = httpServletRequest.getSession();

        Account account = (Account) session.getAttribute("account");

        new LogService().addLog(new Log(account != null ? account.getUsername() : "", httpServletRequest.getRequestURI() + " " + (httpServletRequest.getQueryString() == null ? "" : httpServletRequest.getQueryString()), null));

        chain.doFilter(request, response);
    }
}
