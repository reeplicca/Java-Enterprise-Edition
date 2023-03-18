package kz.Bitlab.JavaEE.Basics_One.ex7;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
@WebServlet(value = "/ex7home")

public class ex7home extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Footballer> footballers = DBManager.getAllFootballers();
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        for (int i = 0; i < footballers.size(); i++) {
            out.print("<h1 style='color:green'>");
            out.print(footballers.get(i).getName() + " " + footballers.get(i).getSurname());
            out.print("</h1>");
            out.print("<h4 style='color:darkblue'>");
            out.print("CLUB: " + footballers.get(i).getClub());
            out.print("</h4>");
            out.print("<h4 style='color:darkred'>");
            out.print("SALARY: " + footballers.get(i).getSalary());
            out.print("</h4>");
            out.print("<h4 style='color:darkred'>");
            out.print("TRANSFER PRICE: " + footballers.get(i).getTransferPrice());
            out.print("</h4>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
