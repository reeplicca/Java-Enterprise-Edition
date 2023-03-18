package kz.Bitlab.JavaEE.JSP_Two.addItem;

import java.util.ArrayList;

public class DBManager {
    private static ArrayList<Item> items = new ArrayList<>();

    public static void addItems(Item item) {
        items.add(item);
    }

    public static ArrayList getAllItems() {
        return items;
    }
}
