package Hello_en;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class HelloEn extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Cookie[] cookies = req.getCookies();
        String cookieName = "user";
        Cookie cookie = null;
        if(cookies != null) {
            for(Cookie c: cookies) {
                if(cookieName.equals(c.getName())) {
                    cookie = c;
                    break;
                }
            }
        }
        if (cookie == null)
            req.getRequestDispatcher("HelloWithoutCookieEn.jsp").forward(req, resp);
        else {
            req.setAttribute("name", cookie.getValue());
            req.getRequestDispatcher("HelloWithCookieEn.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        Cookie cookie = new Cookie("user", req.getParameter("name"));
        resp.addCookie(cookie);
        req.setAttribute("name", req.getParameter("name"));
        req.getRequestDispatcher("HelloWithCookieEn.jsp").forward(req, resp);
    }
}