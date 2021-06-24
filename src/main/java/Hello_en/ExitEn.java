package Hello_en;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ExitEn extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie c = new Cookie("user", "");
        c.setMaxAge(0);
        resp.addCookie(c);
        req.getRequestDispatcher("HelloWithoutCookieEn.jsp").forward(req, resp);
    }
}
