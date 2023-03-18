package kz.Bitlab.JavaEE.Basics_One.ex3;

import java.util.ArrayList;

public class DBManager {
    private static ArrayList<User> users = new ArrayList<>();

    public static void addItem(User user) {
        users.add(user);
    }

    public static ArrayList<User> getAllUsers() {
        return users;
    }
}
