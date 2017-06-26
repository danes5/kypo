package web;

import web.Backend.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Daniel Filakovsky
 */

@WebServlet(name = "welcome", urlPatterns = {"/welcome"})
public class WelcomeServlet extends HttpServlet {

    private static final String WELCOME_JSP = "welcome.jsp";

    private UserServiceImpl getUserService() {
        return (UserServiceImpl) getServletContext().getAttribute("userService");
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        request.setCharacterEncoding("UTF-8");
        processRequest(request, response);
        request.getRequestDispatcher(WELCOME_JSP).forward(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getSession().setAttribute("user", getUserService().findByNickname(request.getParameter("name")));
    }
}