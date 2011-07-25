package pl.alios.utils;
 
import java.io.IOException;
import javax.servlet.*;
 
public class UTF8Filter implements Filter {
 
    public void destroy() {
        //EMPTY BODY
    }
 
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {
        request.setCharacterEncoding("UTF8");
        chain.doFilter(request, response);
    }
 
    public void init(FilterConfig filterConfig) throws ServletException {
        //EMPTY BODY
    }
}

