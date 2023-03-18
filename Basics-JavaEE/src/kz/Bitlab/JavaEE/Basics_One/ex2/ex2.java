package kz.Bitlab.JavaEE.Basics_One.ex2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(value = "/ex2")

public class ex2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        ArrayList<User> list = new ArrayList<>();

        User user1 = new User("Ilyas", "Zhuanyshev", "IT", 550000);
        User user2 = new User("Aybek", "Bagit", "Management", 650000);
        User user3 = new User("Alibek", "Serikov", "HR", 350000);
        User user4 = new User("Serzhan", "Berikov", "IT", 450000);
        User user5 = new User("Madina", "Assetova", "PR", 350000);
        User user6 = new User("Anel", "Mukhamejanova", "Management", 400000);

        list.add(user1);
        list.add(user2);
        list.add(user3);
        list.add(user4);
        list.add(user5);
        list.add(user6);

        out.print("<table cellpadding = 10>");

        out.print("<thead border = 1>");
        out.print("<tr>");
        out.print("<th>NAME</th>");
        out.print("<th>SURNAME</th>");
        out.print("<th>DEPARTMENT</th>");
        out.print("<th>SALARY</th>");
        out.print("</tr>");
        out.print("</thead>");

        out.print("<tbody>");
        for (int i = 0; i < list.size(); i++) {
            out.print("<tr>");
            out.print("<td>");
            out.print(list.get(i).getName());
            out.print("</td>");
            out.print("<td>");
            out.print(list.get(i).getSurname());
            out.print("</td>");
            out.print("<td>");
            out.print(list.get(i).getDepartment());
            out.print("</td>");
            out.print("<td>");
            out.print(list.get(i).getSalary());
            out.print("</td>");
            out.print("</tr>");
        }
        out.print("</tbody>");

        out.print("</table>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
