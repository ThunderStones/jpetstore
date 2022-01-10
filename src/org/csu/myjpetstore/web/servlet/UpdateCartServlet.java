package org.csu.myjpetstore.web.servlet;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.domain.Cart;
import org.csu.myjpetstore.domain.CartItem;
import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.persistence.SerializeUtil;
import org.csu.myjpetstore.persistence.impl.CartDAOImpl;
import org.csu.myjpetstore.service.LogService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

public class UpdateCartServlet extends HttpServlet {

    private static final String VIEW_CART = "/WEB-INF/jsp/cart/Cart.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        Iterator<CartItem> cartItems = cart.getAllCartItems();
        Account account = (Account) session.getAttribute("account");
        JSONArray responseData = new JSONArray();
        while (cartItems.hasNext()) {
            CartItem cartItem = cartItems.next();
            String itemId = cartItem.getItem().getItemId();

            int quantity = Integer.parseInt(request.getParameter(itemId));
            cart.setQuantityByItemId(itemId, quantity);
            if (quantity < 1) {
                cartItems.remove();
            }else if (request.getParameter("requestType").equals("ajax")){
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("itemId", cartItem.getItem().getItemId());
                jsonObject.put("totalPrice", cartItem.getTotal());
                responseData.add(jsonObject);
            }

        }
        new CartDAOImpl().updateCart(account.getUsername(), SerializeUtil.serialize(cart));
        if (!request.getParameter("requestType").equals("ajax")) {
            request.getRequestDispatcher(VIEW_CART).forward(request, response);
        } else {
            response.setContentType("application/json");
            PrintWriter out = response.getWriter();
            out.print(responseData.toJSONString());
            out.flush();
            out.close();
        }

    }
}
