<%@ taglib uri="../WEB-INF/tld/custom-functions.tld" prefix="fn" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.portal.domain.MenuConstants"%>

<c:set var="accountAdmin" value="<%=MenuConstants.ACCOUNT_ADMIN%>" />
<head>
	<jsp:include page="include.jsp"></jsp:include>
    <script type="text/javascript">
	    function changeWidthInHeader(srcElement)
		{
			var factor = 40;
			if(screen.width == 1024)
			{
				 factor = 39;
			}
			srcElement.style.width = screen.width - ((screen.width/1024)*factor);
			//srcElement.style.height = screen.height - ((screen.height/768)*730);
		}
	    function changeWidthInMenuBar(srcElement)
		{
	    	var factor = 40;
			if(screen.width == 1024)
			{
				factor = 39;
			}
			srcElement.style.width = screen.width - ((screen.width/1024)*factor);
		}

	</script>
</head>
<%--
<div id="headerDiv">
	<table>
		<tr>
			<td align="left" valign="bottom" background="../images/health-care_bg.jpg" style="padding-left:0px;text-align:left;height:104px;vertical-align:middle;font-weight:bold;color:white;">
				<table border="0" cellspacing="0" cellpadding="0">
	               	<tr>
	                   <td><img id="headerDivImage" src="../images/health-care_img.jpg" height="104" /></td>
	               	</tr>
               	</table>
            </td>
		</tr>
   	</table>
</div>
 --%>
<div class="wrapper1" id="menuBarWrapper1Div">
	<div class="wrapper">
		<div class="nev-wrapper">
			<div class="nav" id="menuBarNavDiv">
				<ul id="navigation">
			   		
			   		<li class="">
						<a href="${pageContext.request.contextPath}/portal/editAccount.action">
							<span class="menu-left"></span>
							<span class="menu-mid">Home</span>
							<span class="menu-right"></span>
						</a>
					</li>
					<%-- 
					<c:if test="${fn:contains(sessionScope.rolePermissionsList, userAdmin)}">--%>
					<li class="">
						<a href="#">
							<span class="menu-left"></span>
							<span class="menu-mid">Admin</span>
							<span class="menu-right"></span>
						</a>
	            	   	<div class="sub">
			   				<ul>
			   				<%-- 
			   				    <c:if test="${fn:contains(sessionScope.rolePermissionsList, accountAdmin)}"> --%>
									<li>
										<a href="${pageContext.request.contextPath}/portal/viewAccount.action">Account Admin</a>
									</li>
								<%--
								</c:if> --%>
								
							</ul>
			   				<div class="btm-bg"></div>
			   			</div>
					</li>
					
					<%-- 
					</c:if>
					 --%>
			   	</ul>
			</div>
		</div>
		<%-- div class="content-bottom"></div --%>
	</div>
</div>
<span class="space"></span>
<script type="text/javascript">
	//changeWidthInHeader(document.getElementById('headerDiv'));
	//changeWidthInHeader(document.getElementById('headerDivImage'));
	changeWidthInMenuBar(document.getElementById('menuBarWrapper1Div'));
	changeWidthInMenuBar(document.getElementById('menuBarNavDiv'));
</script>
