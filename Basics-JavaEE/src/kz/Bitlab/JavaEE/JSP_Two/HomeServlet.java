package kz.Bitlab.JavaEE.JSP_Two;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.Bitlab.JavaEE.JSP_Two.addItem.DBManager;
import kz.Bitlab.JavaEE.JSP_Two.addItem.Item;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/jsphome")

public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Item> items = DBManager.getAllItems();
        req.setAttribute("items",items);
        req.getRequestDispatcher("/home.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
