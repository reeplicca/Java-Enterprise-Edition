package kz.Bitlab.JavaEE.Basics_One.ex7;

import java.util.ArrayList;

public class DBManager {
    private static ArrayList<Footballer> footballers = new ArrayList<>();

    public static void addFootballer(Footballer footballer) {
        footballers.add(footballer);
    }

    public static ArrayList getAllFootballers() {
        return footballers;
    }
}
