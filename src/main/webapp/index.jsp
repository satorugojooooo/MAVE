<!DOCTYPE html>
<html>
<head>
  <title>Echoing HTML Form Query Parameters</title>
</head>
<body>
  <h3>Choose an author:</h3>
  <form method="get">
    <input type="checkbox" name="author" value="Dinesh Cloud Eng">Dinesh 
    <input type="checkbox" name="author" value="Akash Devops Eng">Akash
    <input type="checkbox" name="author" value="Sriram AD support eng">Sriram
    <input type="checkbox" name="author" value="Nandhini Devops Eng">Nandhini
    <input type="checkbox" name="author" value="Subiksha AD support eng">Subiksha
    <input type="checkbox" name="author" value="Dinesh AD support eng"> Dinesh
    <input type="submit" value="Query">
  </form>
 
  <%
  String[] authors = request.getParameterValues("author");
  if (authors != null) {
  %>
    <h3>You have selected author(s):</h3>
    <ul>
  <%
      for (int i = 0; i < authors.length; ++i) {
  %>
        <li><%= authors[i] %></li>
  <%
      }
  %>
    </ul>
    <a href="<%= request.getRequestURI() %>">BACK</a>
  <%
  }
  %>
</body>
</html>
