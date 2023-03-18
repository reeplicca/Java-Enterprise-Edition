package kz.Bitlab.JavaEE.JSP_Two.addItem;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(value = "/additem")

public class addItemServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/additem.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("item-name");
        int price = Integer.parseInt(req.getParameter("item-price"));
        Item item = new Item();
        item.setName(name);
        item.setPrice(price);
        DBManager.addItems(item);

        resp.sendRedirect("/jsphome");
    }
}
