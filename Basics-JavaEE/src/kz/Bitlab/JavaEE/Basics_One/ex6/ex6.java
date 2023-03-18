package kz.Bitlab.JavaEE.Basics_One.ex6;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/ex6")

public class ex6 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.print("<form action = '/ex6' method = 'post'>");
        out.print("FULL NAME:<input type = 'text' name = 'user-fullName'>");
        out.print("<br>");
        out.print("EXAM POINTS:<input type = 'number' name = 'user-points'>");
        out.print("<br>");
        out.print("<button>SUMBIT EXAM</button>");
        out.print("</form>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fullName = req.getParameter("user-fullName");
        int points = Integer.parseInt(req.getParameter("user-points"));
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        if (points >= 90) {
            out.print("<h1>");
            out.print(fullName + " got " + '"' + "A" + '"' + " for exam");
            out.print("</h1>");
        } else if (points >= 75) {
            out.print("<h1>");
            out.print(fullName + " got " + '"' + "B" + '"' + " for exam");
            out.print("</h1>");
        } else if (points >= 60) {
            out.print("<h1>");
            out.print(fullName + " got " + '"' + "C" + '"' + " for exam");
            out.print("</h1>");
        } else if (points >= 50) {
            out.print("<h1>");
            out.print(fullName + " got " + '"' + "D" + '"' + " for exam");
            out.print("</h1>");
        } else {
            out.print("<h1>");
            out.print(fullName + " got " + '"' + "F" + '"' + " for exam");
            out.print("</h1>");
        }
    }
}
