<%@ page errorPage="exceptionHandler.jsp" %>

<%@page import="com.portal.util.GenericUtils"%><style media="all" type="text/css">@import "${pageContext.request.contextPath}/css/menu_style.css";</style>
<!-- jmesa css -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jmesa.css"></link>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/example.css"></link>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/calendar.css"></link>

<!-- blueprint framework -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bp/custom_screen.css" type="text/css" media="screen, projection">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bp/print.css" type="text/css" media="print">
<!--[if lt IE 8]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/bp/ie.css" type="text/css" media="screen, projection"><![endif]-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bp/fancy-type/screen.css" type="text/css" media="screen, projection">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/labtest-table.css"></link>

<script type="text/javascript">
	var contextPath = "<%=request.getContextPath()%>";
</script>

<!-- js files -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.jmesa.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jmesa.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cms/common-utils.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cms/date-utils.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cms/time-utils.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cms/calendar.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cms/report.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cms/registerReport.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cms/numericValidations.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cms/multiselectionlist.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cms/patientHistory.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cms/login.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cms/global.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cms/hmsButtons.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cms/editableDropDown.js"> </script>

<script type="text/javascript">

	javascript:window.history.forward(1);

	function changeWidth(srcElement)
	{
		var factor = 315;
		if(screen.height == 720)
		{
			factor = 303;
		}
		else if(screen.height == 600)
		{
			factor = 348;
		}
		else if(screen.height == 737)
		{
			factor = 337;
		}
		else if (screen.height == 768)
		{
			factor = 345;
		}
		
		srcElement.style.width = screen.width - ((screen.width/1024)*43);
		srcElement.style.height = screen.height -((screen.height/768)*factor);
	}
	function changeWidthHomePage(srcElement)
	{
		srcElement.style.width = screen.width - ((screen.width/1024)*46);
	}
	function changeWidthInPopUp(srcElement)
	{
		srcElement.style.width = screen.width - ((screen.width/1024)*43);
	}
	function changeWidthInSubmit(srcElement)
	{
		try
		{
			srcElement.style.width = screen.width - ((screen.width/1024)*43);
			
			srcElement.style.left = ((screen.width/1024)*7);
			srcElement.style.top = ((screen.height/768)*630);
		}
		catch(e)
		{
		}
	}
	function setJmesaTableWidth(id)
	{
		var factor = 14;
		if (screen.width == 1024)
		{
			factor = 20;
		}
		var xfactor = screen.width - ((screen.width/1024)*43) - factor;
		$(id).width(xfactor);
	}
	function setSearchFieldsDivWidth(srcElement)
	{
		var xfactor = screen.width - ((screen.width/1024)*75);
		$(srcElement).width(xfactor);
	}

	function changeHeightInViewBillingHistoryDiv(srcElement)
	{
		if(screen.height == 720)
		{
			var xfactor = screen.height - ((screen.height/768)*598);
		}
		else 
		{
			var xfactor = screen.height - ((screen.height/768)*573);
		}
		$(srcElement).height(xfactor);
	}

	function changeHeightInViewCustomTestRestultDiv(srcElement)
	{
		if(screen.height == 720)
		{
			var xfactor = screen.height - ((screen.height/768)*598);
		}
		else 
		{
			var xfactor = screen.height - ((screen.height/768)*573);
		}
		$(srcElement).height(xfactor);
	}
	  function changeWidthInOnlineUserHeader(srcElement)
		{
			var factor = 40;
			if(screen.width == 1024)
			{
				factor = 39;
			}
			srcElement.style.width = screen.width - ((screen.width/1024)*factor);
			srcElement.style.height = screen.height - ((screen.height/768)*660);
		}
	    function changeWidthOnlineUserHeaderDiv(srcElement)
		{
			try
			{
		    	var factor = 40;
				if(screen.width == 1024)
				{
					factor = 45;
				}
				srcElement.style.width = screen.width - ((screen.width/1024)*factor);
			} 
			catch(e)
			{
			}
		}

	    function changeWidthForJMesaOutterDiv(srcElement)
		{
			srcElement.style.width = screen.width - ((screen.width/1024)*43);
		}
</script>
<style>            
	#progressDiv 
	{     
		visibility: hidden;            
		position:absolute;
		/*filter:alpha(opacity=40); 
		opacity: 0.4;*/ 
	}  
	#pleasewaitDiv 
	{     
		visibility: hidden;            
		position:absolute;
		filter:alpha(opacity=92); 
		opacity: 0.92;
	} 
		        
</style>
<style type="text/css">
<!-- 
#createdBy, #lastUpdatedBy, #lastUpdatedDate, #createdDate {
background:lightgrey;
color:red;
font-weight: bold;
} 
-->
</style>
<div id="progressDiv">
	<img id="progress" src="/portal/images/Flying_envelope1.gif" style="width:60 px; height: 60px; " />
</div>
<div id="pleasewaitDiv" style="z-index: 1">
	<img id="progress" src="/portal/images/pleasewait.gif" style="border: thin solid darkblue;" />
</div>
<script type="text/javascript">

   var ht = screen.height/2 - 100;
   var wd = screen.width/2 - 30;
   document.getElementById('progressDiv').style.left = wd;
   document.getElementById('progressDiv').style.top = ht;
   var ht = screen.height/2 - 120;
   var wd = screen.width/2 - 100;
   document.getElementById('pleasewaitDiv').style.left = wd;
   document.getElementById('pleasewaitDiv').style.top = ht;

</script>
