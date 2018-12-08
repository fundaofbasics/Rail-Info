<%
session.setAttribute("uid", null);
session.invalidate();
response.sendRedirect("admin.jsp");
%>