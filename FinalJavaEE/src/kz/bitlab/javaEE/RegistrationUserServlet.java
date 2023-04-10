package kz.bitlab.javaEE;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/register")
public class RegistrationUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/registration-user.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String redirect = "/register?email-is-exist";
        String email = req.getParameter("user-email");
        String password = req.getParameter("user-password");
        String rePassword = req.getParameter("user-re-password");
        String full_name = req.getParameter("user-full_name");

        User checkUser = DBManager.getUser(email);

        if (checkUser == null) {
            redirect = "/register?password-is-not-match";
            if (password.equals(rePassword)) {
                User user = new User();
                user.setEmail(email);
                user.setPassword(password);
                user.setFull_name(full_name);
                user.setRole_id(2L);
                if (DBManager.addUser(user) == true) {
                    redirect = "/register?success";
                }
            }
        }

        resp.sendRedirect(redirect);
    }
}
