package com.example.webtest;

import java.io.*;

import jakarta.servlet.http.*;


//@WebServlet(name = "Tester", value = "/")
public class Tester extends HttpServlet {

    private int[][] answers = new int[2][3];


    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        String language = request.getParameter("select_language");
        String lvl = request.getParameter("choose_your_lvl");

        if (language != null && lvl != null) {
            HttpSession session = request.getSession(true);

            if (language.equals("Java")) {
                answers[0][0] += 1;
            } else if (language.equals("Python")) {
                answers[0][1] += 1;
            } else {
                answers[0][2] += 1;
            }

            if (lvl.equals("Junior")) {
                answers[1][0] += 1;
            } else if (lvl.equals("Middle")) {
                answers[1][1] += 1;
            } else {
                answers[1][2] += 1;
            }

            session.setAttribute("q1_java", answers[0][0]);
            session.setAttribute("q1_python", answers[0][1]);
            session.setAttribute("q1_php", answers[0][2]);

            session.setAttribute("q2_jun", answers[1][0]);
            session.setAttribute("q2_mid", answers[1][1]);
            session.setAttribute("q2_sen", answers[1][2]);
        }

        response.sendRedirect("results.jsp");

    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    }
}