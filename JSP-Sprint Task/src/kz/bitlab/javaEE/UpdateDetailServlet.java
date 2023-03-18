package kz.bitlab.javaEE;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/update")
public class UpdateDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("task-id"));
        String name = req.getParameter("task-name");
        String description = req.getParameter("task-description");
        String date = req.getParameter("task-date");
        String doneTask = req.getParameter("task-done");
        Task task = new Task();
        task.setId(id);
        task.setName(name);
        task.setDescription(description);
        task.setDeadlineDate(date);
        task.setDoneTask(doneTask);
        DBManager.updateTask(task);
        resp.sendRedirect("/home");
    }
}
