package kz.Bitlab.JavaEE.Basics_One.ex3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/ex3")

public class ex3Main extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        out.print("<form action ='/ex3' method = 'post'>");
        out.print("NAME: <input type= 'text' name = 'user-name'>");
        out.print("<br>");
        out.print("SURNAME: <input type= 'text' name = 'user-surname'>");
        out.print("<br>");
        out.print("<button>SEND</button>");
        out.print("</form>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("user-name");
        String surname = req.getParameter("user-surname");
        User user = new User();
        user.setName(name);
        user.setSurname(surname);
        DBManager.addItem(user);
    }
}
