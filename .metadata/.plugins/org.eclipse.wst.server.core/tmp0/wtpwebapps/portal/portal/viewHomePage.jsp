

<html>
    <head>
    	<title> HMS Home Page</title>
    	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=7" />
		<jsp:include page="include.jsp"></jsp:include>
    </head>
<script language="javascript" type="text/javascript">

    img2 = new Image()


    seconds = "2";
    var images = new Array("h.jpg","1.jpg","h2.jpg","2.jpg","3.jpg","5.jpg","6.jpg","7.jpg","8.jpg","9.jpg","10.jpg","11.jpg",
    	                     "12.jpg","13.jpg","14.jpg","15.jpg","16.jpg","17.jpg","18.jpg","19.jpg","20.jpg","21.jpg"
    	                     ,"22.jpg","23.jpg","24.jpg","25.jpg");
    var countimages = 0;
    function imgOne()
    {
    setTimeout("imgTwo()", seconds * 3800);
    }
    function imgTwo()
    {
    	countimages++;
    	
        if (images.length == countimages)
        {
        	countimages=0;
        }
    	
    document.myimg.src = contextPath +'/images/hospitalImage/'+images[countimages];
    
    setTimeout("imgTwo()", seconds * 3800);
    }


	value=1
	var plus=1
	var minus=0
	
	function IE()
	{
		if (value<80&&plus)
			value+=2
		else
		{
			plus=0
			minus=1
		}
	
		if (value>30&&minus)
		value-=3
		else
		{
			plus=1
			minus=0
		}
	
	document.getElementById("myimg").filters[0].opacity=value
	}
	
	
	function MOZ()
	{
	if (value<80&&plus)
	value-=2
	else{
	plus=0
	minus=1
	}
	
	
	
	document.getElementById("myimg").style.MozOpacity=value+"%"
	}
	
	if (window.sidebar)
	{
	setInterval("MOZ()",150)
	}
	
	if (document.all)
	{
	setInterval("IE()",150)
	}

</script>

    <body class="bodyClass" onload="imgOne();">
		<jsp:include page="menu.jsp"></jsp:include>

		<style type="text/css">
			a {color:white;}
			a:focus, a:hover {color:orange;}
		</style>

		<form name="HomePageForm" action="${pageContext.request.contextPath}/hms/viewHomePage.action">
	        <table class="mainTable" border="2" cellpadding="0" cellspacing="0">
				<tr>
	        		<td colspan="2" class="screenHeader" align="center" >
	              	<span class="screenHeaderSpan" style="text-align:center;font:italic bold 12px/30px Georgia, serif;padding-left:37%;font-weight: bold; color:white;" ><marquee behavior="slide" direction="left" scrollamount="30" id="mymarquee2"> Health Care Plus -  A Product of <a href="#" onclick="window.open('http://sarathisoftech.com/','Sarathi Softech', 'addressbar=1,menubar=1,resizable=1,location=1,status=1,scrollbars=1,width=1300,height=900,left=0,top=0');">Sarathi Softech Pvt. Ltc.</a>  </marquee></span>
					</td>
				</tr>
			    <tr>
			    	<td style="text-align: center;">
			    		<div class="fixedDiv" id="outterDiv">
			    		
			    		
			    		<table>
			    			<tr>
								<td>
									<img style="margin-top:0;width:978px;height:517px; -moz-opacity:50%;filter:alpha(opacity=30)" src="${pageContext.request.contextPath}/images/hospitalImage/h.jpg" name="myimg" >
								</td>
							</tr>	
			    		</table>
			    		</div>
		    		</td>
	    		</tr>     
			</table>
     	 </form>
        
        <script type="text/javascript">
        	changeWidth(document.getElementById('outterDiv'));
        	changeWidthHomePage(document.getElementById('myimg'));
        </script>
		
	</body>

</html>
  