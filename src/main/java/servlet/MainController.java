package servlet;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
// import model.User;

@WebServlet("/app")
public class MainController extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {

        HttpSession session = req.getSession(false);

        if (session != null) {
            System.out.println("Session ID: " + session.getId());
            System.out.println("User: " + session.getAttribute("user"));
            System.out.println("Creation Time: " + new java.util.Date(session.getCreationTime()));
        }

        String page = req.getParameter("page");

        if (page == null || page.isEmpty()) {
            page = "dashboard";
        }

        String contentPage;

        switch (page) {
            case "users":
                contentPage = "/views/users.jsp";
                break;
            case "settings":
                contentPage = "/views/settings.jsp";
                break;
            case "projects":
                contentPage = "/views/projects.jsp";
                break;
            default:
                contentPage = "/views/dashboard.jsp";
        }

        req.setAttribute("contentPage", contentPage);
        req.getRequestDispatcher("/views/layout.jsp").forward(req, res);
    }
}