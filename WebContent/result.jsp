<%@ page import= "java.util.*" %>
<%@ page contentType="text/html; charset=big5" %>
<%@ page pageEncoding= "big5" %>

<html>
<body>
<h1>啤酒建議JSP</h1>
<p>

<%
	List<String> styles = (List)request.getAttribute("styles");
	Iterator<String> it = styles.iterator();
	while(it.hasNext()){
		out.print("<br>試試看專家推薦的啤酒："+ it.next());
	}
%>
</body>
</html>