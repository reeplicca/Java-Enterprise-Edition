package kz.Bitlab.JavaEE.Basics_One.ex7;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/ex7")

public class ex7 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.print("<form action = '/ex7' method = 'post'>");
        out.print("NAME:");
            out.print("<input type = 'text' placeholder = 'Insert name' name = 'user-name'>");
        out.print("<br><br>");
        out.print("SURNAME:");
            out.print("<input type = 'text' placeholder = 'Insert surname' name = 'user-surname'>");
        out.print("<br><br>");
        out.print("Club:");
            out.print("<select name = 'user-club'>");
                out.print("<option>Real Madrid CF</option>");
                out.print("<option>Atalanta</option>");
                out.print("<option>Real Sociedad</option>");
            out.print("</select>");
        out.print("<br><br>");
        out.print("SALARY:");
            out.print("<input type = 'number' placeholder = 'Insert salary' name = 'user-salary'>");
        out.print("<br><br>");
        out.print("TRANSFER PRICE:");
            out.print("<input type = 'number' placeholder = 'Insert transfer price' name = 'user-price'>");
        out.print("<br><br>");
        out.print("<button>ADD FOOTBALER</button>");
        out.print("</form>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("user-name");
        String surname = req.getParameter("user-surname");
        String club = req.getParameter("user-club");
        int salary = Integer.parseInt(req.getParameter("user-salary"));
        int price = Integer.parseInt(req.getParameter("user-price"));

        Footballer footballer = new Footballer();
        footballer.setName(name);
        footballer.setSurname(surname);
        footballer.setClub(club);
        footballer.setSalary(salary);
        footballer.setTransferPrice(price);
        DBManager.addFootballer(footballer);
    }
}
