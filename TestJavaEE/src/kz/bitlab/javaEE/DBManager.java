package kz.bitlab.javaEE;

import java.util.ArrayList;

public class DBManager {
    private static ArrayList<Item>items = new ArrayList<>();
    public static void addItem(Item item){
        items.add(item);
    }
    public static Item getItem(Long id) {
        for (Item item : items) {
            if (item.getId() == id) {
                return item;
            }
        }

        return null;
    }
    public static ArrayList<Item> getAllItems(){
        return items;
    }

    public static void updateItem(Item updItem) {
        items.set((int) (updItem.getId() - 1), updItem);
    }

    public static void deleteItem(Long id) {
        items.remove(Integer.parseInt(String.valueOf(id)) - 1);
    }
}
