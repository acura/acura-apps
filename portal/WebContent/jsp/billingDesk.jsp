<%@ page
	language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="com.sarathi.constants.CcavenueConstant"%>
<%@page import="com.portal.domain.Account"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta
	http-equiv="Content-Type"
	content="text/html; charset=UTF-8">
<title>Subscribe</title>
</head>
<meta
	http-equiv="Content-Type"
	content="text/html; charset=iso-8859-1" />
<title>Sign On</title>
<meta
	http-equiv="Content-Type"
	content="text/html; charset=utf-8" />
<meta
	http-equiv="X-UA-Compatible"
	content="IE=7" />
<sx:head parseContent="true" />
<style type="text/css">
select {
	width: 100%;
    padding: 5px;
    margin: 0px;
    border: 1px solid #CCC;
}
input
  {
    width: 98%;
    padding: 5px;
    margin: 0px;
    border: 1px solid #CCC;
  }
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
<script type="text/javascript">
		function changeHeight(srcElement)
		{
			srcElement.style.height = screen.height - 420;
		}
		function changeWidthHomePage(srcElement)
		{
			var wd = parseInt(srcElement.style.width);
			if (screen.width == 1024)
				srcElement.style.width = wd - ((screen.width/1250)*30);
			else if (screen.width == 800)
				srcElement.style.width = wd - ((screen.width/1250)*70);
			else
				srcElement.style.width = wd - ((screen.width/1250)*6);

		}

		function changeWidth(srcElement)
		{
			srcElement.style.width = screen.width - ((screen.width/1250)*43);
		}
		function changeAmount($i) {
			var s= document.getElementById("amount_id");
			var cur = document.getElementById("currency_id").value;
			if($i == "monthly" && cur == "inr") {
				s.value = 1000;
			} else if($i == "monthly" && cur == "usd") {
				s.value = 15.16;
			} else if($i == "anually" && cur == "inr") {
				s.value = 10000;
			} else if($i == "anually" && cur == "usd") {
				s.value = 151.64;
			} else {
				s.value = 0;
			}
		}
		function changeAmount2($i) {
			var s= document.getElementById("amount_id");
			var sub= document.getElementById("subscription_type").value;
			if($i == "inr" && sub == "monthly") {
				s.value = 1000;
			} else if($i == "inr" && sub == "anually") {
				s.value = 10000;
			} else if($i == "usd" && sub == "monthly") {
				s.value = 15.16;
			} else if($i == "usd" && sub == "anually") {
				s.value = 151.64;
			}
		}

		function MM_preloadImages() {
		  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
		    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
		    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
		}
		function validateemail()  
		{  
		var x=document.billingDesk.billing_email.value;  
		var atposition=x.indexOf("@");  
		var dotposition=x.lastIndexOf(".");  
		if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
		  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
		  return false;  
		  }  
		}
		function validateOtherFields() {
			var billing_city_var = document.billingDesk.billing_city.value;
			var billing_state_var = document.billingDesk.billing_state.value;
			if(billing_city_var == null || billing_city_var == "") {
				alert("Please enter city name");
				return true;
			} else if(billing_state_var=null || billing_state_var == "") {
				alert("Please enter state");
				return true;
			} else {
				return false;
			}
		}
		function validateForm() {
			var amount_var = document.billingDesk.amount.value; 
		    if (amount_var == null || amount_var == "") {
		        alert("Please select subscription type");
		        return false;
		    } else if(validateOtherFields()) {
		    	
		    } else {
		    	document.billingDesk.closest('form').submit()
		    }
		}
			
</script>
<%
		HttpSession sessionsa = request.getSession(false);
		Account ac = (Account)sessionsa.getAttribute("account");
		String userName_var = ac.getOwnerName();
		String address_var = ac.getAddress();
		String emailId_var = ac.getEmailId().toString();
		String subscriptionEndDate_var = ac.getSubscriptionEndDate().toString();
		String mobileNumber_var = ac.getMobileNumber();
%>
<body>
<form style="" method="post" name="billingDesk" action="customerData" >
	<table
		width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<th align="center" scope="col"><table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<th
							align="left" valign="bottom" scope="col">
							<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
								<tr>
									<th align="left" valign="bottom" scope="col">
									<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#E9E9E9">
											<tr>
												<td width="1023"><table width="100%" border="0" cellspacing="0" cellpadding="0">
														<tr>
															<td><img
																src="${pageContext.request.contextPath}/images/portalImage/header_img1.jpg"
																width="397"
																height="359" /></td>
															<td><img
																src="${pageContext.request.contextPath}/images/portalImage/header_img2.jpg"
																width="626"
																height="359" /></td>
														</tr>
														<tr>
															<td bgcolor="#FFFFFF"><span class="style71">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contact
																	Us Call: 020-3267 0355 , 94230 04767<br />
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email:
																	amol.gadre@sarathisoftech.com
															</span></td>
															<td><img
																src="${pageContext.request.contextPath}/images/portalImage/header2_img2.jpg"
																width="626"
																height="40" /></td>
														</tr>
													</table></td>
											</tr>
											
											<tr>
												<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
														<tr>
															<td width="100%" align="left" valign="top" bgcolor="#FFFFFF">


																<table width="100%" border="0" cellspacing="0" cellpadding="0">
																	<tr>
																		<td width="99%" height="7"></td>
																		<td width="1%"><img
																			src="${pageContext.request.contextPath}/images/portalImage/header_img4.jpg"
																			width="34"
																			height="7" /></td>
																	</tr>
																	<tr>
																		<td colspan="2">
																		<table width="99%" border="0" cellspacing="0" cellpadding="0">
																				<tr>
																					<td width="12">&nbsp;</td>
																					<td width="714">
																					<table width="100%" border="0" cellpadding="0" cellspacing="0"
																							background="../images/portalImage/blue_text_box_bg.jpg">
																							<tr align="center">
																								<td
																									colspan="2"
																									align="center"
																									background="../images/portalImage/box_top_bg.jpg"><img
																									src="${pageContext.request.contextPath}/images/portalImage/text_box_left_corner.png"
																									width="3"
																									height="34" /></td>
																								<td
																									colspan="2"
																									background="../images/portalImage/box_top_bg.jpg">
																									<%if(session.getAttribute("created") != null) {
																										if(session.getAttribute("created").equals("true")) { session.removeAttribute("created"); %>
																									<span class="style65">Hello <%= ac.getOwnerName() %> your account id has been created but you have to subcribe by payment </span>
																									<%} } else { %>
																									<span class="style65"> Your Subscription Ended </span>
																									<%}%>
																								</td>
																								<td
																									width="17"
																									align="right"
																									background="../images/portalImage/box_top_bg.jpg"><img
																									src="${pageContext.request.contextPath}/images/portalImage/text_box_right_corner.png"
																									width="4"
																									height="34" /></td>
																							</tr>
																							<tr>
																								<td colspan="2">&nbsp;</td>
																								<td colspan="2">&nbsp;</td>
																								<td>&nbsp;</td>
																							</tr>


																							<tr>
																								<td
																									width="17"
																									bgcolor="#FFFFFF"><img
																									src="${pageContext.request.contextPath}/images/portalImage/blue_text_box_left_corner.png"
																									width="17"
																									height="19" /></td>
																								<td width="10">&nbsp;</td>
																								<td colspan="2">&nbsp;</td>
																								<td bgcolor="#FFFFFF"><img
																									src="${pageContext.request.contextPath}/images/portalImage/blue_text_box_right_corner.png"
																									width="17"
																									height="19"
																									align="right" /></td>
																							</tr>
																						</table></td>
																					<td width="10">&nbsp;</td>
																				</tr>
																			</table></td>
																	</tr>
<table width="100%" height="0" border='1' align="center" background="../images/portalImage/blue_text_box_bg2.jpg" >
	<tr align="center" >
		<td colspan="2"><b>Compulsory information</b></td>
	</tr>
	<tr align="center">
		<td>Your subscription ends on</td>
		<td><input type="text" disabled="disabled" name="merchant_id" id="merchant_id" value="<%= ac.getSubscriptionEndDate() %>" readonly="true" /></td>
	</tr>
	<tr style="display: none;">
				<td>TID	:</td><td><input type="text" name="tid" id="tid" readonly /></td>
			</tr>
			<tr style="display: none;">
				<td>Merchant Id</td>
				<td><input type="text" name="merchant_id" id="merchant_id" value="85389" readonly="true" /></td>
			</tr>
			<tr style="display: none;">
				<td>Order Id</td>
				<td><input type="text" name="order_id" value="1" /></td>
			</tr>
			<tr align="center"><td>Subscription Type</td>
				<td>
					<select id="subscription_type" name="subscription" onchange="changeAmount(value)">
						<option value="NONE">--- Select ---</option> 
					   <option value="monthly">Monthly</option>
					   <option value="anually">Anually</option>
					</select> 
				</td>
			</tr>
			<tr align="center"><td>Currency</td>
				<td>
					<select id="currency_id" name="currency" onchange="changeAmount2(value)" >
						<option value="inr">INR</option> 
					   <option value="usd">USD</option>
					</select> 
				</td>
			</tr>
				<!-- <td>Currency</td>
				<td><input type="text" name="currency" value="INR" /></td> -->
			<tr align="center">
				<td>Amount</td>
				<td><input id="amount_id" type="text" name="amount" value="" readonly="true" required  /></td>
			</tr>
			<tr style="display: none;">
				<td>Redirect URL</td>
				<td><input type="text" name="redirect_url" value= <%=CcavenueConstant.REDIRECT_URL%> />
				</td>
			</tr>
			<tr style="display: none;">
				<td>Cancel URL</td>
				<td><input type="text" name="cancel_url" value= <%=CcavenueConstant.REDIRECT_URL%> />
				</td>
			</tr>
			<tr style="display: none;">
				<td>Language</td>
				<td><input type="text" name="language" id="language" value="EN" /></td>
			</tr>
			<tr align="center">
				<td colspan="2"><b>Billing information(optional):</b></td>
			</tr>
			<tr align="center">
				<td>Billing Name</td>
				<td><input type="text" name="billing_name" value="<%= userName_var %>" /></td>
			</tr>
			<tr align="center">
				<td>Billing Address:</td>
				<td><input type="text" name="billing_address" value="<%=address_var%>" /></td>
			</tr>
			<tr align="center">
				<td>Billing City:</td>
				<td><input type="text" name="billing_city" value="" /></td>
			</tr>
			<tr align="center">
				<td>Billing State:</td>
				<td><input type="text" name="billing_state" value="" /></td>
			</tr>
			<tr align="center">
				<td>Billing Zip:</td>
				<td><input type="text" name="billing_zip" value="411041" /></td>
			</tr>
			<tr align="center">
				<td>Billing Country:</td>
				<td><input type="text" name="billing_country" value="India" /></td>
			</tr>
			<tr align="center">
				<td>Billing Mobile Number:</td>
				<td><input type="text" name="billing_tel" value="<%=mobileNumber_var%>" readonly="true" /></td>
			</tr>
			<tr align="center">
				<td>Billing Email:</td>
				<td><input type="text" name="billing_email" value="<%=emailId_var%>"  readonly="true" /></td>
			</tr>
			<tr align="center" >
				<td colspan="2">
					<a href="javascript:validateForm()" onclick="" role="button" class="btn" id="submit" data-toggle="modal">
					<img src="../images/continue_img.png" width="117" height="34" /></a>
					 <a id="cancel" href="/portal/login/login.jsp">
					 <img src="../images/cancel_img.png" width="117" height="34" /></a>
				</td>
			</tr>
			<tr align="center" >
				<td colspan="2" >
					<a href="#" class="style1" target="_blank"
						onclick="window.open('http://www.sarathisoftech.com','SarathiSoftechSite', 'addressbar=1,menubar=0,resizable=1,location=1,status=1,scrollbars=1,width=1300,height=900,left=0,top=0');"
						title="Gynosoft Release 1.3.15"> <font color="RED">&copy; 2015 - Sarathi Softech Pvt. Ltd. Pune</font></a>
				</td>
			</tr>
			
</table>
																</table>
															</td>
														</tr>
														
													</table></td>
											</tr>
											
										</table></th>
								</tr>
							</table></th>
					</tr>
				</table></th>
		</tr>
	</table>

</form>
</body>
<script type="text/javascript">
	//changeWidthInOnlineUserHeader(document.getElementById('headerDiv'));
	setJmesaTableWidth('#TestRecordsByUserSearch');
</script>
</html>