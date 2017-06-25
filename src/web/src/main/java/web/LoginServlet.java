package web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import web.Backend.MD5;
import web.Backend.User;
import web.Backend.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Author: Daniel Filakovsky
 */

@WebServlet(urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    private static final String USER_JSP = "login.jsp";
    private static final Logger logger = LoggerFactory
            .getLogger(LoginServlet.class);

    private UserServiceImpl getUserService() {
        return (UserServiceImpl) getServletContext().getAttribute("userService");
    }

    protected boolean processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        boolean result = false;
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username != null && password != null) {
            User user = getUserService().verify(username, MD5.convert(password));
            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("username", user.getNickname());
                String uri = "http://hogwarts.ho/welcome";

                response.sendRedirect(uri);
                result = true;
            }
        }
        if (!result) out.println("Invalid username and/or password");
        out.close();
        return result;
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        logger.info("get");
        request.setCharacterEncoding("UTF-8");
        if (request.getParameter("username") != null)
            if (processRequest(request, response))
                return;
        request.getRequestDispatcher(USER_JSP).forward(request, response);
    }
}