package kz.bitlab.javaEE;

import org.postgresql.Driver;

import java.sql.*;
import java.util.ArrayList;

public class DBManager {
    private static Connection connection;
    static{
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/testdb","postgres","123ckjyf");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static boolean addItem(Item item) {
        int rows = 0;

        try {
            PreparedStatement stmt = connection.prepareStatement("insert into items(name, price, amount)values (?,?,?)");
            stmt.setString(1, item.getName());
            stmt.setInt(2, item.getPrice());
            stmt.setInt(3, item.getAmount());
            rows = stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return rows > 0;
    }
    public static ArrayList<Item> getAllItems() {
        ArrayList<Item> items = new ArrayList<>();

        try {
            PreparedStatement stmt = connection.prepareStatement("select * from items");
            ResultSet resultSet = stmt.executeQuery();
            while (resultSet.next()) {
                Item item = new Item();
                item.setId(resultSet.getLong("id"));
                item.setName(resultSet.getString("name"));
                item.setPrice(resultSet.getInt("price"));
                item.setAmount(resultSet.getInt("amount"));
                items.add(item);
            }
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return items;
    }

    public static Item getItem(Long id) {
        Item item = null;

        try {
            PreparedStatement stmt = connection.prepareStatement("select * from items where id = ?");
            stmt.setLong(1, id);
            ResultSet resultSet = stmt.executeQuery();
            if (resultSet != null) {
                if (resultSet.next()) {
                    item = new Item();
                    item.setId(resultSet.getLong("id"));
                    item.setName(resultSet.getString("name"));
                    item.setPrice(resultSet.getInt("price"));
                    item.setAmount(resultSet.getInt("amount"));
                }
            }
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return item;
    }

    public static void updateItem(Item item) {
        try {
            PreparedStatement stmt = connection.prepareStatement("update items set name = ?, price = ?, amount = ? where id = ?");
            stmt.setString(1, item.getName());
            stmt.setInt(2, item.getPrice());
            stmt.setInt(3, item.getAmount());
            stmt.setLong(4, item.getId());

            stmt.executeUpdate();

            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void deleteItem(Long id) {
        try {
            PreparedStatement stmt = connection.prepareStatement("delete from items where id = ?");
            stmt.setLong(1,id);
            stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static boolean addUser(User user) {
        int rows = 0;
        try {
            PreparedStatement stmt = connection.prepareStatement("insert into users(email,password) values(?,?)");
            stmt.setString(1,user.getEmail());
            stmt.setString(2,user.getPassword());
            rows = stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return rows > 0;
    }

    public static User getUser(String email) {
        User user = null;

        try {
            PreparedStatement stmt = connection.prepareStatement("select * from users where email = ?");
            stmt.setString(1, email);
            ResultSet resultSet = stmt.executeQuery();
            if (resultSet != null) {
                if (resultSet.next()) {
                    user = new User();
                    user.setEmail(resultSet.getString("email"));
                    user.setPassword(resultSet.getString("password"));
                }
            }
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return user;
    }

}
