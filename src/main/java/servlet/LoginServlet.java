package servlet;

import java.io.IOException;
import dao.UserDAO;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import model.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        req.getRequestDispatcher("/auth/login.jsp").forward(req, res);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        // Basic validation
        if (email == null || password == null ||
            email.isBlank() || password.isBlank()) {

            HttpSession session = req.getSession();
            session.setAttribute("error", "All fields are required");
            res.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        UserDAO dao = new UserDAO();
        User user = dao.loginUser(email, password);

        if (user != null) {
            // LOGIN SUCCESS

            // destroy old session
            HttpSession oldSession = req.getSession(false);
            if (oldSession != null) {
                oldSession.invalidate();
            }

            // create new session
            HttpSession session = req.getSession(true);
            session.setAttribute("user", user);
            session.setMaxInactiveInterval(24 * 60 * 60);

            res.sendRedirect(req.getContextPath() + "/app?page=dashboard");

        } else {
            // LOGIN FAILED

            HttpSession session = req.getSession();
            session.setAttribute("error", "Invalid email or password");
            res.sendRedirect(req.getContextPath() + "/login");
        }
    }
}
