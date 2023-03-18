package kz.Bitlab.JavaEE.Basics_One.ex3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(value = "/ex3Home")

public class ex3Home extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<User> users = DBManager.getAllUsers();
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        for (int i = 0; i < users.size(); i++) {
            out.print("<h1>");
            out.print(users.get(i).getName());
            out.print("</h1>");
            out.print("<h1>");
            out.print(users.get(i).getSurname());
            out.print("</h1>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
