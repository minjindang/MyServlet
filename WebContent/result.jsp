<%@ page import= "java.util.*" %>
<%@ page contentType="text/html; charset=big5" %>
<%@ page pageEncoding= "big5" %>

<html>
<body>
<h1>��s��ĳJSP</h1>
<p>

<%
	List<String> styles = (List)request.getAttribute("styles");
	Iterator<String> it = styles.iterator();
	while(it.hasNext()){
		out.print("<br>�ոլݱM�a���˪���s�G"+ it.next());
	}
%>
</body>
</html>