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
        
        // Check if user is logged in or not
        if (session == null || session.getAttribute("user") == null) {
            res.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        String page = req.getParameter("page");

        if (page == null || page.isEmpty()) {
            page = "dashboard";
        }

        String contentPage;
        String buttonLabel = "Create Project";
        String buttonAction = req.getContextPath() + "/views/forms/projectForm.jsp";

        switch (page) {
            case "bugs":
                contentPage = "/views/bugs.jsp";
                buttonLabel = "Create Bug";
                buttonAction = req.getContextPath() + "/views/forms/bugForm.jsp";
                break;
            case "projects":
                contentPage = "/views/projects.jsp";
                break;
            case "settings":
                contentPage = "/views/settings.jsp";
                break;
            default:
                contentPage = "/views/dashboard.jsp";
                buttonLabel = "Create Project";
                buttonAction = req.getContextPath() + "/views/forms/projectForm.jsp";
        }

        req.setAttribute("contentPage", contentPage);
        req.setAttribute("buttonLabel", buttonLabel);
        req.setAttribute("buttonAction", buttonAction);
        req.getRequestDispatcher("/views/layout.jsp").forward(req, res);
    }
}