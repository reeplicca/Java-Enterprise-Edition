package kz.bitlab.javaEE;

import java.util.ArrayList;

public class DBManager {
    private static ArrayList<Task> tasks = new ArrayList<>();

    public static void addTask(Task task) {
        tasks.add(task);
    }

    public static Task getTask(Long id) {
        for (Task task:tasks) {
            if (task.getId() == id) {
                return task;
            }
        }

        return null;
    }

    public static ArrayList getAllTasks() {
        return tasks;
    }

    public static void updateTask(Task task) {
        tasks.set((int) (task.getId() - 1), task);
    }

    public static void deleteTask(Long id) {
       tasks.remove((int) (id - 1));
    }
}