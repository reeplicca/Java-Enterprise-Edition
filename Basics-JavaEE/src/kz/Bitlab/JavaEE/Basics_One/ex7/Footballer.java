package kz.Bitlab.JavaEE.Basics_One.ex7;

public class Footballer {
    private String name;
    private String surname;
    private String club;
    private int salary;
    private int transferPrice;

    public Footballer() {
    }

    public Footballer(String name, String surname, String club, int salary, int transferPrice) {
        this.name = name;
        this.surname = surname;
        this.club = club;
        this.salary = salary;
        this.transferPrice = transferPrice;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getClub() {
        return club;
    }

    public void setClub(String club) {
        this.club = club;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public int getTransferPrice() {
        return transferPrice;
    }

    public void setTransferPrice(int transferPrice) {
        this.transferPrice = transferPrice;
    }
}
