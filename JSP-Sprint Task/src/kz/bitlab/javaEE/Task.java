package kz.bitlab.javaEE;

public class Task {
    private static Long prevId = 0L;
    private Long id;
    private String name;
    private String description;
    private String deadlineDate;
    private String doneTask;

    public Task() {
    }

    public Task(String name, String description, String deadlineDate, String doneTask) {
        prevId++;
        this.id = prevId;
        this.name = name;
        this.description = description;
        this.deadlineDate = deadlineDate;
        this.doneTask = doneTask;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDeadlineDate() {
        return deadlineDate;
    }

    public void setDeadlineDate(String deadlineDate) {
        this.deadlineDate = deadlineDate;
    }

    public String getDoneTask() {
        return doneTask;
    }

    public void setDoneTask(String doneTask) {
        this.doneTask = doneTask;
    }
}