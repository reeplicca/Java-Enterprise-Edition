package kz.bitlab.javaEE;

public class Item {
    private static Long prevId = 0L;
    private Long id;
    private String name;
    private int price;
    private int amount;

    public Item(String name, int price, int amount) {
        prevId++;
        this.id = prevId;
        this.name = name;
        this.price = price;
        this.amount = amount;
    }

    public Item() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
