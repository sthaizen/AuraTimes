package com.Auratimes.filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import com.Auratimes.util.CookieUtil;
import com.Auratimes.util.SessionUtil;

@WebFilter(asyncSupported = true, urlPatterns = "/*")
public class AuthenticationFilter implements Filter {

    private static final String LOGIN = "/login";
    private static final String REGISTER = "/register";
    private static final String INITIAL = "/initial";

    private static final String ADMIN_HOME = "/AdminDashBoard";
    private static final String USER_HOME = "/home";

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // No init required
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String uri = req.getRequestURI();

        // Allow access to static resources
        if (uri.endsWith(".css") || uri.endsWith(".js") || uri.endsWith(".jpg") || uri.endsWith(".jpeg") || uri.endsWith(".mp4") || uri.endsWith(".png")) {
            chain.doFilter(request, response);
            return;
        }

        // Public pages
        if (uri.endsWith(LOGIN) || uri.endsWith(REGISTER) || uri.endsWith(INITIAL)) {
            chain.doFilter(request, response);
            return;
        }

        // Get role from session or cookie
        String role = (String) SessionUtil.getAttribute(req, "Role");
        if (role == null && CookieUtil.getCookie(req, "role") != null) {
            role = CookieUtil.getCookie(req, "role").getValue();
        }

        if (role == null) {
            // Not logged in, redirect to login
            res.sendRedirect(req.getContextPath() + LOGIN);
            return;
        }

     // Admin-only pages
        if (uri.endsWith("/AdminDashBoard") ||  uri.endsWith("/dashBoardProduct") || uri.endsWith("/adminProfile") 
            || uri.endsWith("/DeleteUserUtil") || uri.endsWith("/DeleteProductUtil")) {
            if ("admin".equals(role)) {
                chain.doFilter(request, response);
            } else {
                res.sendRedirect(req.getContextPath() + USER_HOME);
            }
            return;
        }

        // User-only pages
        if (uri.endsWith("/home") || uri.endsWith("/Collection") || uri.endsWith("/filterProduct") || uri.endsWith("/searchProduct") || uri.endsWith("/addtocart")
                || uri.endsWith("/aboutus") || uri.endsWith("/ysindex") ||  uri.endsWith("/Spindex") ||  uri.endsWith("/Skindex") ||  uri.endsWith("/terms") ||  uri.endsWith("/privacy") ||  uri.endsWith("/Nbindex") ||  uri.endsWith("/contact") || uri.endsWith("/productdetail") || uri.endsWith("/storelocation")
                || uri.endsWith("/userprofile")) {
            if ("customer".equals(role)) {
                chain.doFilter(request, response);
            } else {
                res.sendRedirect(req.getContextPath() + ADMIN_HOME);
            }
            return;
        }

        // Unknown or unauthorized access — default redirect
        res.sendRedirect(req.getContextPath() + INITIAL);
    }

    @Override
    public void destroy() {
        // No cleanup needed
    }
}
