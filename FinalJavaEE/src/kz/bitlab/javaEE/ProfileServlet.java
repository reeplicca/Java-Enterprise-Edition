package kz.bitlab.javaEE;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/profile")
public class ProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/profile.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String redirect = "/profile?update-password-error";
        String emailOld = req.getParameter("user-old-email");
        String emailUpd = req.getParameter("user-email");
        String passwordUpd = req.getParameter("user-password");
        String rePasswordUpd = req.getParameter("user-re-password");
        String fullnameUpd = req.getParameter("user-full-name");

        if (passwordUpd.equals(rePasswordUpd)) {
            redirect = "/profile?update-error";
            User updUser = new User();
            updUser.setEmail(emailUpd);
            updUser.setPassword(passwordUpd);
            updUser.setFull_name(fullnameUpd);

            if (DBManager.updateUser(updUser,emailOld)) {
                req.getSession().removeAttribute("currentUser");
                redirect = "/login";
            }
        }

        resp.sendRedirect(redirect);
    }
}
