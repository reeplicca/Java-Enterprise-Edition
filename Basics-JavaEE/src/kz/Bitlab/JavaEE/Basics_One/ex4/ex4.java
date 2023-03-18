package kz.Bitlab.JavaEE.Basics_One.ex4;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/ex4")
public class ex4 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.print("<form action = '/ex4' method = 'post'>");
        out.print("<input type = 'text' name = 'user-name'>");
        out.print("<br>");
        out.print("<input type = 'text' name = 'user-surname'>");
        out.print("<br>");
        out.print("<select name = 'user-food'>");
        out.print("<option>Manty - 900 kzt</option>");
        out.print("<option>Plov - 1000 kzt</option>");
        out.print("<option  >Kyurdak - 1100 kzt</option>");
        out.print("</select>");
        out.print("<br>");
        out.print("<button>ORDER</button>");
        out.print("</form>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("user-name");
        String surname = req.getParameter("user-surname");
        String food = req.getParameter("user-food");
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.print("<h1>");
        out.print(name + " " + surname + " ordered " + food);
        out.print("</h1>");
    }
}
