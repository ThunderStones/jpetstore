package org.csu.myjpetstore.web.servlet;

import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Cart;
import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.domain.Order;
import org.csu.myjpetstore.persistence.SerializeUtil;
import org.csu.myjpetstore.persistence.impl.CartDAOImpl;
import org.csu.myjpetstore.service.LogService;
import org.csu.myjpetstore.service.OrderService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class NewOrderServlet extends HttpServlet {
    private static final String SHIPPING_FORM = "/WEB-INF/jsp/order/ShippingForm.jsp";
    private static final String CONFIRM_ORDER = "/WEB-INF/jsp/order/ConfirmOrder.jsp";
    private static final String VIEW_ORDER = "/WEB-INF/jsp/order/ViewOrder.jsp";
    private static final String ERROR_PAGE = "/WEB-INF/jsp/common/Error.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Order order = (Order) session.getAttribute("order");
        boolean confirmed = (boolean) session.getAttribute("confirmed");
        Account account = (Account) session.getAttribute("account");

        new LogService().addLog(new Log(account.getUsername(), request.getRequestURI() + " " + (request.getQueryString() == null ? "" : request.getQueryString()), Log.operation.ADD));

        if ("true".equals(request.getParameter("inputOrderInfo"))) {
            formDataToOrder(request, order, "on".equals(request.getParameter("shippingAddressRequired")));
        }
        if (!confirmed) {
            request.getRequestDispatcher(CONFIRM_ORDER).forward(request, response);
        } else if (order != null) {


            new OrderService().insertOrder(order);
            session.setAttribute("cart", new Cart());
            new CartDAOImpl().updateCart(account.getUsername(), SerializeUtil.serialize(new Cart()));
            request.setAttribute("msg", "Thank you, your order has been submitted.");
            request.getRequestDispatcher(VIEW_ORDER).forward(request, response);
        } else {
            request.setAttribute("msg", "An error occurred processing your order (order was null).");
            request.getRequestDispatcher(ERROR_PAGE).forward(request, response);
        }


    }

    private void formDataToOrder(HttpServletRequest request, Order order, boolean shipping) {
        String data;
        if ((data = request.getParameter("order.cardType")) != null) {
            order.setCardType(data);
        }
        if ((data = request.getParameter("order.creditCard")) != null) {
            order.setCreditCard(data);
        }
        if ((data = request.getParameter("order.expiryDate")) != null) {
            order.setExpiryDate(data);
        }
        if ((data = request.getParameter("order.billToFirstName")) != null) {
            order.setBillToFirstName(data);
        }
        if ((data = request.getParameter("order.billToLastName")) != null) {
            order.setBillToLastName(data);
        }
        if ((data = request.getParameter("order.billAddress1")) != null) {
            order.setBillAddress1(data);
        }
        if ((data = request.getParameter("order.billAddress2")) != null) {
            order.setBillAddress2(data);
        }
        if ((data = request.getParameter("order.billCity")) != null) {
            order.setBillCity(data);
        }
        if ((data = request.getParameter("order.billState")) != null) {
            order.setBillState(data);
        }
        if ((data = request.getParameter("order.billZip")) != null) {
            order.setBillZip(data);
        }
        if ((data = request.getParameter("order.billCountry")) != null) {
            order.setBillCountry(data);
        }

        if (shipping){
            if ((data = request.getParameter("order.shipToFirstName")) != null) {
                order.setShipToFirstName(data);
            }
            if ((data = request.getParameter("order.shipToLastName")) != null) {
                order.setShipToLastName(data);
            }
            if ((data = request.getParameter("order.shipAddress1")) != null) {
                order.setShipAddress1(data);
            }
            if ((data = request.getParameter("order.shipAddress2")) != null) {
                order.setShipAddress2(data);
            }
            if ((data = request.getParameter("order.shipCity")) != null) {
                order.setShipCity(data);
            }
            if ((data = request.getParameter("order.shipState")) != null) {
                order.setShipState(data);
            }
            if ((data = request.getParameter("order.shipZip")) != null) {
                order.setShipZip(data);
            }
            if ((data = request.getParameter("order.shipCountry")) != null) {
                order.setShipCountry(data);
            }
        }
    }

}