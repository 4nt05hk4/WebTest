<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Results</title>
</head>
<body>

<table>
  <thead>
  <tr>
    <th>Question</th>
    <th>JAVA</th>
    <th>PYTHON</th>
    <th>PHP</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>Language</td>
    <td><%= String.valueOf((int) session.getAttribute("q1_java"))%></td>
    <td><%= String.valueOf((int) session.getAttribute("q1_python"))%></td>
    <td><%= String.valueOf((int) session.getAttribute("q1_php"))%></td>
  </tr>
  </tbody>
</table>

<table>
  <thead>
  <tr>
    <th>Question</th>
    <th>JUNIOR</th>
    <th>MIDDLE</th>
    <th>SENIOR</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>Level</td>
    <td><%= String.valueOf((int) session.getAttribute("q2_jun"))%></td>
    <td><%= String.valueOf((int) session.getAttribute("q2_mid"))%></td>
    <td><%= String.valueOf((int) session.getAttribute("q2_sen"))%></td>
  </tr>
  </tbody>
</table>
<br> <a href="/index.jsp">Go back</a>

</body>
</html>
