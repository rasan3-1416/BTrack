package dao;

import model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import util.DBConnection;

public class UserDAO {

    public boolean registerUser(String name, String email, String password) {
        String sql = "INSERT INTO USERS (name, email, password) VALUES (?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);

            int rows = ps.executeUpdate();
            System.out.println("Signup insert rows = " + rows);
            return rows > 0;

        } catch (SQLException e) {
            if (e.getErrorCode() == 1) { // ORA-00001 (unique constraint)
                System.err.println("Duplicate email");
            } else {
                System.err.println("SQL Error: " + e.getMessage());
                System.err.println("SQLState: " + e.getSQLState() + ", Code: " + e.getErrorCode());
            }
            return false;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
            
        }
    }

    public User loginUser(String email, String password) {

        String sql = "SELECT id, name, email, password, role_id FROM users WHERE email = ?";

        try (Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String dbPassword = rs.getString("password");

                // Check password
                if (dbPassword.equals(password)) {

                    User user = new User();
                    user.setId(rs.getInt("id"));
                    user.setName(rs.getString("name"));
                    user.setEmail(rs.getString("email"));
                    user.setRoleId(rs.getInt("role_id"));

                    return user;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null; // login failed
    }
}