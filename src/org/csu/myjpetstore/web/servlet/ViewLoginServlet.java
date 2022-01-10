package org.csu.myjpetstore.web.servlet;

import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.persistence.CaptchaUtil;
import org.csu.myjpetstore.service.LogService;

import javax.imageio.ImageIO;
import javax.servlet.*;
import javax.servlet.http.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

public class ViewLoginServlet extends HttpServlet {
    private static final String LOGIN_PAGE = "/WEB-INF/jsp/account/SignonForm.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        File outputFile = new File(getServletContext().getRealPath("") + "image.jpg");
        if (!outputFile.exists()) {
            outputFile.mkdirs();
        }
        System.out.println(outputFile.getAbsolutePath());
        CaptchaUtil captchaUtil = CaptchaUtil.Instance();
        BufferedImage bufferedImage = captchaUtil.getImage();

        try {
            ImageIO.write(bufferedImage, "jpg", outputFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        String path = outputFile.getPath().substring(outputFile.getPath().lastIndexOf("\\") + 1);
        session.setAttribute("capCode", captchaUtil.getString());
        System.out.println(captchaUtil.getString());
        session.setAttribute("path", path);
        response.setDateHeader("Expires", -1);
        //firefox
        response.setHeader("Cache-Control", "no-cache");
        //其他
        response.setHeader("Pragma", "no-cache");
        request.getRequestDispatcher(LOGIN_PAGE).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
