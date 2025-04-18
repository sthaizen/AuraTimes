package com.islington.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Auratimes.config.DbConfig;
import com.Auratimes.util.PasswordUtil;

@WebServlet(asyncSupported = true, urlPatterns = { "/login" })
public class loginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public loginController() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("Username");
        String password = request.getParameter("Password");
        jakarta.servlet.http.HttpSession session = request.getSession();
        RequestDispatcher dispatcher;

        try (Connection con = DbConfig.getDbConnection()) {

            // Only filter by username
            PreparedStatement pst = con.prepareStatement("SELECT * FROM users WHERE Username = ?");
            pst.setString(1, username);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                String encryptedPassword = rs.getString("Password");

                // Decrypt and compare using PasswordUtil
                if (PasswordUtil.match(password, username, encryptedPassword)) {
                    session.setAttribute("Username", rs.getString("Username"));
                    dispatcher = request.getRequestDispatcher("/WEB-INF/pages/home.jsp");
                } else {
                    request.setAttribute("status", "false");
                    dispatcher = request.getRequestDispatcher("/WEB-INF/pages/login.jsp");
                }
            } else {
                request.setAttribute("status", "false");
                dispatcher = request.getRequestDispatcher("/WEB-INF/pages/login.jsp");
            }

            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("status", "error");
            request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
        }
    }
}
