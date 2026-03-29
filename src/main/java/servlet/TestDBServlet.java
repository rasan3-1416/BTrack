package servlet;

import java.io.IOException;


import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import util.DBConnection;

@WebServlet("/dev/testdb")
public class TestDBServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        try {
            DBConnection.getConnection();

            System.out.println("DB Connected ✅");  // terminal
            res.getWriter().println("DB Connected ✅"); // browser

        } catch (Exception e) {
            e.printStackTrace();
            res.getWriter().println("Connection Failed ❌");
        }
    }
}
