<%@page import="com.portal.constants.CcavenueParams"%>
<%@page import="com.portal.domain.PortalConstant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.net.URLDecoder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.io.*,java.util.*,com.ccavenue.security.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Payment Result</title>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Sign On</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<sx:head parseContent="true" />
<style type="text/css">
body, td, th {
	font-size: 11pt;
	font-weight: 300;
	font-style: normal;
	font-family: "Times New Roman", Times, serif;
}

body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image:
		url(file:///C|/Documents and Settings/Reshu/Desktop/images/body-bg.jpg);
	background-repeat: repeat;
	background-image: url();
	background-color: #E9E9E9;
}

a:link {
	text-decoration: none;
	color: #222942;
}

a:visited {
	text-decoration: none;
	color: #222942;
}

a:hover {
	text-decoration: none;
}

a:active {
	text-decoration: none;
}

.style57 {
	font-size: 10pt;
	font-weight: normal;
	color: #333333;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}

.style58 {
	font-size: 13px;
	font-weight: 600;
	color: #666666;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}

.style65 {
	font-size: 16px;
	font-weight: bold;
	color: #FFFFFF;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}

.style66 {
	font-size: 13px;
	font-weight: 600;
	color: #FFFFFF;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}

.style70 {
	font-size: 10pt;
	font-weight: bold;
	color: #333333;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}

.style71 {
	color: #40537B;
	font-weight: bold;
}
</style>

<script type="text/javascript">
	function changeWidthHomePage(srcElement) {
		var wd = parseInt(srcElement.style.width);
		if (screen.width == 1024)
			srcElement.style.width = wd - ((screen.width / 1250) * 30);
		else if (screen.width == 800)
			srcElement.style.width = wd - ((screen.width / 1250) * 70);
		else
			srcElement.style.width = wd - ((screen.width / 1250) * 6);

	}

	function changeWidth(srcElement) {
		srcElement.style.width = screen.width - ((screen.width / 1250) * 43);
	}

	function MM_preloadImages() { //v3.0
		var d = document;
		if (d.images) {
			if (!d.MM_p)
				d.MM_p = new Array();
			var i, j = d.MM_p.length, a = MM_preloadImages.arguments;
			for (i = 0; i < a.length; i++)
				if (a[i].indexOf("#") != 0) {
					d.MM_p[j] = new Image;
					d.MM_p[j++].src = a[i];
				}
		}
	}

	function goToLogin() {
		document.forms["loginPage"].submit();
	}
</script>
<body>
<%
 Hashtable hs=CcavenueParams.ccavenueParamHM;;
/*	String encResp= request.getParameter("encResp");
	if(encResp != null) {
		String workingKey = PortalConstant.workingKey;
				AesCryptUtil aesUtil=new AesCryptUtil(workingKey);
				String decResp = aesUtil.decrypt(encResp);
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
	} */
		
	%>
	<table width="100%" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<th align="center" scope="col"><table width="100%" border="0"
					cellspacing="0" cellpadding="0">

					<tr>
						<th align="left" valign="bottom" scope="col"><table
								width="100%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<th align="left" valign="bottom" scope="col"><table
											width="1000" border="0" align="center" cellpadding="0"
											cellspacing="0" bgcolor="#E9E9E9">
											<tr>
												<td width="1023"><table width="100%" border="0"
														cellspacing="0" cellpadding="0">
														<tr>
															<td><img
																src="${pageContext.request.contextPath}/images/portalImage/header_img1.jpg"
																width="397" height="359" /></td>
															<td><img
																src="${pageContext.request.contextPath}/images/portalImage/header_img2.jpg"
																width="626" height="359" /></td>
														</tr>
														<tr>
															<td bgcolor="#FFFFFF"><span class="style71">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contact
																	Us Call: 020-3267 0355 , 94230 04767<br />
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email:
																	amol.gadre@sarathisoftech.com
															</span></td>
															<td><img
																src="${pageContext.request.contextPath}/images/portalImage/header2_img2.jpg"
																width="626" height="40" /></td>
														</tr>
													</table></td>
											</tr>
											<tr>
												<td><table width="100%" border="0" cellspacing="0"
														cellpadding="0">
														<tr>
															<td width="72%" align="left" valign="top"
																bgcolor="#FFFFFF"><table width="100%" border="0"
																	cellspacing="0" cellpadding="0">
																	<tr>
																		<td width="99%" height="7"></td>
																		<td width="1%"><img
																			src="${pageContext.request.contextPath}/images/portalImage/header_img4.jpg"
																			width="34" height="7" /></td>
																	</tr>
																	<tr>
																		<td colspan="2"><table width="99%" border="0"
																				cellspacing="0" cellpadding="0">
																				<tr>
																					<td width="12">&nbsp;</td>
																					<td width="714"><table width="100%" border="0"
																							cellpadding="0" cellspacing="0"
																							background="../images/portalImage/blue_text_box_bg.jpg">
																							<tr>
																								<td colspan="2"
																									background="../images/portalImage/box_top_bg.jpg"><img
																									src="${pageContext.request.contextPath}/images/portalImage/text_box_left_corner.png"
																									width="3" height="34" /></td>
																								<td colspan="2" align="center"
																									background="../images/portalImage/box_top_bg.jpg"><span
																									class="style65"> Your Transaction
																										Details </span></td>
																								<td width="17" align="right"
																									background="../images/portalImage/box_top_bg.jpg"><img
																									src="${pageContext.request.contextPath}/images/portalImage/text_box_right_corner.png"
																									width="4" height="34" /></td>
																							</tr>
																							<tr>
																								<td colspan="2">&nbsp;</td>
																								<td colspan="2">&nbsp;</td>
																								<td>&nbsp;</td>
																							</tr>
																							<tr>
																								<td colspan="2" align="right"><img
																									src="${pageContext.request.contextPath}/images/portalImage/bullet_img1.png"
																									width="19" height="20" /></td>
																								<td>&nbsp;</td>
																								<td align="left" valign="middle" class="style57">Your payment of <%= hs.get("currency") %> <%= hs.get("amount") %> was <% if(hs.get("order_status").equals("Success")) {%>
																									Successful <%} else { %> <%= hs.get("order_status") %>
																									<% } %>
																								</td>
																								<td>&nbsp;</td>
																							</tr>
																							<tr>
																								<td height="7" colspan="2"></td>
																								<td height="7"></td>
																								<td height="7" class="style57"></td>
																								<td height="7"></td>
																							</tr>
																							<tr>
																								<td colspan="2" align="right"><img
																									src="${pageContext.request.contextPath}/images/portalImage/bullet_img1.png"
																									width="19" height="22" /></td>
																								<td>&nbsp;</td>
																								<td align="left" valign="middle" class="style57">
																									Now your subscription type is <%= session.getAttribute("subscriptionType") %>
																								</td>
																								<td>&nbsp;</td>
																							</tr>
																							
																							
																							<tr>
																								<td height="7" colspan="2"></td>
																								<td height="7"></td>
																								<td height="7" class="style57"></td>
																								<td height="7"></td>
																							</tr>
																							<tr>
																								<td colspan="2" align="right"><img
																									src="${pageContext.request.contextPath}/images/portalImage/bullet_img1.png"
																									width="19" height="22" /></td>
																								<td>&nbsp;</td>
																								<td align="left" valign="middle" class="style57">
																									Now your subscription end date is <%= session.getAttribute("subscriptionEndDate") %>
																								</td>
																								<td>&nbsp;</td>
																							</tr>
																							<tr>
																								<td height="7" colspan="2"></td>
																								<td height="7"></td>
																								<td height="7" class="style57"></td>
																								<td height="7"></td>
																							</tr>
																							<tr>
																								<td colspan="2" align="right"><img
																									src="${pageContext.request.contextPath}/images/portalImage/bullet_img1.png"
																									width="19" height="22" /></td>
																								<td>&nbsp;</td>
																								<td align="left" valign="middle" class="style57">
																									Bank refenrece Number <%= hs.get("bank_ref_no") %>
																								</td>
																								<td>&nbsp;</td>
																							</tr>
																							<tr>
																								<td height="7" colspan="2"></td>
																								<td height="7"></td>
																								<td height="7" class="style57"></td>
																								<td height="7"></td>
																							</tr>
																							<tr>
																								<td colspan="2" align="right"><img
																									src="${pageContext.request.contextPath}/images/portalImage/bullet_img1.png"
																									width="19" height="22" /></td>
																								<td>&nbsp;</td>
																								<td align="left" valign="middle" class="style57">
																									Tracking Id is  <%= hs.get("tracking_id") %>
																								</td>
																								<td>&nbsp;</td>
																							</tr>
																							
																							
																							
																							<tr align="center">
																							<td colspan="2" align="center"></td>
																								<td>&nbsp;</td>
																								<td align="center" valign="middle" class="style57">
																									<a id="login" href="/portal/login/login.jsp"><img src="../images/continue_img.png" width="117" height="34" /></a>
																								</td>
																								<td>&nbsp;</td>
																							</tr>
																							
																							
																							<tr>
																								<td width="17" bgcolor="#FFFFFF"><img
																									src="${pageContext.request.contextPath}/images/portalImage/blue_text_box_left_corner.png"
																									width="17" height="19" /></td>
																								<td width="10">&nbsp;</td>
																								<td colspan="2">&nbsp;</td>
																								<td bgcolor="#FFFFFF"><img
																									src="${pageContext.request.contextPath}/images/portalImage/blue_text_box_right_corner.png"
																									width="17" height="19" align="right" /></td>
																							</tr>
																						</table></td>
																					<td width="10">&nbsp;</td>
																				</tr>
																				
																			</table></td>
																	</tr>
																</table></td>
														</tr>
													</table>
													</td>
											</tr>
										</table></th>
								</tr>
							</table></th>
				</table></th>
		</tr>
	</table>


</body>
</html>