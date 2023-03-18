package kz.Bitlab.JavaEE.Basics_One.ex5;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/ex5")

public class ex5 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.print("<form action = '/ex5' method = 'post'>");
        out.print("FULL NAME:<input type = 'text' name = 'user-fullName'>");
        out.print("<br>");
        out.print("AGE:<input type = 'number' name = 'user-age'>");
        out.print("<br>");
        out.print("GENDER:");
        out.print("<br>");
        out.print("<input type = 'radio' name = 'user-gender' value = 'male'> male");
        out.print("<br>");
        out.print("<input type = 'radio' name = 'user-gender' value = 'female'> female");
        out.print("<br>");
        out.print("<button>SEND</button>");
        out.print("</form>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fullName = req.getParameter("user-fullName");
        int age = Integer.parseInt(req.getParameter("user-age"));
        String gender = req.getParameter("user-gender");
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        if (age >= 18 && gender.equals("male")) {
           out.print("<h1>");
           out.print("Hello Dear Mister " + fullName);
           out.print("</h1>");
        } else if (age <= 18 && gender.equals("female")) {
            out.print("<h1>");
            out.print("Hello Dude Miss " + fullName);
            out.print("</h1>");
        }
    }
}
