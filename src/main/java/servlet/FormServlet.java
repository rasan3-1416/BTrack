package servlet;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/form")
public class FormServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {

        String type = req.getParameter("type");

        if (type == null || type.isEmpty()) {
            res.setStatus(400);
            res.getWriter().print("Missing form type");
            return;
        }

        switch (type) {
            case "project":
                req.getRequestDispatcher("/views/forms/projectForm.jsp").include(req, res);
                break;
            case "bug":
                req.getRequestDispatcher("/views/forms/bugForm.jsp").include(req, res);
                break;
            default:
                res.setStatus(404);
                res.getWriter().print("Form not found");
        }
    }
}
