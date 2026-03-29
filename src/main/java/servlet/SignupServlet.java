package servlet;

import java.io.IOException;
import dao.UserDAO;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {

    private static final String FLASH_ERROR = "flashError";
    private static final String FLASH_NAME = "flashName";
    private static final String FLASH_EMAIL = "flashEmail";

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        if (session != null) {
            String error = (String) session.getAttribute(FLASH_ERROR);
            String name = (String) session.getAttribute(FLASH_NAME);
            String email = (String) session.getAttribute(FLASH_EMAIL);

            if (error != null) {
                req.setAttribute("error", error);
                session.removeAttribute(FLASH_ERROR);
            }
            if (name != null) {
                req.setAttribute("name", name);
                session.removeAttribute(FLASH_NAME);
            }
            if (email != null) {
                req.setAttribute("email", email);
                session.removeAttribute(FLASH_EMAIL);
            }
        }

        req.getRequestDispatcher("/auth/signup.jsp").forward(req, res);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {
        System.out.println("Signup POST hit");
           
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");
        
        // Handle missing fields and password mismatch error
        if (name == null || email == null || password == null || confirmPassword == null ||
            name.isBlank() || email.isBlank() || password.isBlank() || confirmPassword.isBlank()) {

            setFlashAndRedirect(req, res, "All fields are required", name, email);
            return;
        }

        // Validate password strength (at least 8 chars, includes letters and numbers)
        if (password == null || password.length() < 8) {
            setFlashAndRedirect(req, res, "Password must be at least 8 characters long", name, email);
            return;
        }

        // Check if passwords match
        if (!password.equals(confirmPassword)) {
            setFlashAndRedirect(req, res, "Passwords do not match", name, email);
            return;
        }

        UserDAO dao = new UserDAO();
        boolean success = dao.registerUser(name, email, password);

        // Redirect to login on success, otherwise show error on signup page
        if (success) {
            res.sendRedirect(req.getContextPath() + "/login");
        } else {
            setFlashAndRedirect(req, res, "Email already exists or DB error", name, email);
        }
    }

    private void setFlashAndRedirect(HttpServletRequest req, HttpServletResponse res, String error,
            String name, String email) throws IOException {
        HttpSession session = req.getSession();
        session.setAttribute(FLASH_ERROR, error);
        session.setAttribute(FLASH_NAME, name == null ? "" : name);
        session.setAttribute(FLASH_EMAIL, email == null ? "" : email);
        res.sendRedirect(req.getContextPath() + "/signup");
    }
}