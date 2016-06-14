<%@page import="com.portal.domain.PortalConstant"%>
<%@page import="java.net.URLEncoder"%>
<%
/*
   This is the sample Checkout Page JSP script. It can be directly used for integration with CCAvenue if your application is developed in JSP. You need to simply change the variables to match your variables as well as insert routines (if any) for handling a successful or unsuccessful transaction.
*/
%>
<%@ page import = "java.io.*,java.util.*,com.ccavenue.security.*" %>
<html>
<head>
	<title>Sub-merchant checkout page</title>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
	<%
		String merchant_id =PortalConstant.merchant_id; //Put your merchant id here
		String access_code = PortalConstant.access_code; //Put access code here
		String workingKey = PortalConstant.workingKey.trim(); //Put encryption key here
		
		Enumeration enumeration = request.getParameterNames();
		String ccaRequest = "", pname = "", pvalue = "";
		while (enumeration.hasMoreElements()) {
			pname = "" + enumeration.nextElement();
			pvalue = request.getParameter(pname);
			ccaRequest = ccaRequest + pname + "=" + pvalue + "&";
		}
		AesCryptUtil aesUtil = new AesCryptUtil(workingKey);
		String encRequest = aesUtil.encrypt(ccaRequest);
	%>
	<form method="post" name="redirect" action="https://test.ccavenue.com/transaction/transaction.do?command=initiateTransaction">
		<input type="hidden" id="encRequest" name="encRequest" value="<%= encRequest %>">
		<input type="hidden" name="access_code" id="access_code" value="<%= access_code %>">
		<script language='javascript'>document.redirect.submit();</script>
	</form>
	
</body> 
</html>
