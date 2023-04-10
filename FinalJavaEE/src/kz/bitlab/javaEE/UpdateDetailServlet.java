package kz.bitlab.javaEE;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Timestamp;

@WebServlet(value = "/update")
public class UpdateDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("news-id"));
        String title = req.getParameter("news-title");
        String content = req.getParameter("news-content");
        Timestamp post_date = Timestamp.valueOf(req.getParameter("news-post-date"));

        News news = new News();
        news.setId(id);
        news.setTitle(title);
        news.setContent(content);
        news.setPost_date(post_date);

        DBManager.updateNews(news);

        resp.sendRedirect("/home");
    }
}
