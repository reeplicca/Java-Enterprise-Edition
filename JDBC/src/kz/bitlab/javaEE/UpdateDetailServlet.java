package kz.bitlab.javaEE;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/update")
public class UpdateDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("item-id"));
        String name = req.getParameter("item-name");
        int price = Integer.parseInt(req.getParameter("item-price"));
        int amount = Integer.parseInt(req.getParameter("item-amount"));
        Item item = new Item();
        item.setId(id);
        item.setName(name);
        item.setPrice(price);
        item.setAmount(amount);

        DBManager.updateItem(item);

        resp.sendRedirect("/home");
    }
}
