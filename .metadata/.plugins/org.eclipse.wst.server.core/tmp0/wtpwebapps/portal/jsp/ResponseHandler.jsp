<%@page import="com.portal.domain.PortalConstant"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.io.*,java.util.*,com.ccavenue.security.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Response Handler</title>
</head>
<body>
	<%-- <%
			Hashtable hs=new Hashtable();
				String encryptedResponse= request.getParameter("encResp");
				if(encryptedResponse != null) {
					String workingKeyVar = PortalConstant.workingKey;//32 Bit Alphanumeric Working Key should be entered here so that data can be decrypted.
					AesCryptUtil aesUtil=new AesCryptUtil(workingKeyVar);
					String decResp = aesUtil.decrypt(encryptedResponse);
					StringTokenizer tokenizer = new StringTokenizer(decResp, "&");
					
					String pair=null, pname=null, pvalue=null;
					while (tokenizer.hasMoreTokens()) {
						pair = (String)tokenizer.nextToken();
						if(pair!=null) {
							StringTokenizer strTok=new StringTokenizer(pair, "=");
							pname=""; pvalue="";
							if(strTok.hasMoreTokens()) {
								pname=(String)strTok.nextToken();
								if(strTok.hasMoreTokens())
									pvalue=(String)strTok.nextToken();
								hs.put(pname, URLDecoder.decode(pvalue));
							}
						}
					}
				}
				
	%>
	<center>
		<font size="4" color="blue"><b>Response Page</b></font>
		<table border="1">
			<%
				if(hs.get("order_status").equals("Success")) {
					
				/* Enumeration enumeration = hs.keys();
				while(enumeration.hasMoreElements()) {
					pname=""+enumeration.nextElement();
					pvalue=""+ hs.get(pname); */
			%>
				<tr>
					<td>Transaction success</td> 
				</tr>
			<% } else {
				response.sendRedirect("");
			}
				pvalue=""+ hs.get("order_status");
			%>
			
			<tr><td> <%= pvalue %> </td></tr>
		</table>
	</center> --%>
	hi
</body>
</html>