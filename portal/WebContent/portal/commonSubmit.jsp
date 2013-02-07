<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="buttonDiv" id="submitDiv">
<table>
	<tr>
		<td colspan="2" style="text-align:center;">
		<%-- <input type="button" accesskey="S" onclick="setTimeout('document.forms[0].submit();', 1000); document.getElementById('pleasewaitDiv').style.visibility = 'visible';" style="width:60px;" value="Save" />
		--%>
		
			<a href="#"  
				onmouseover="return changeImage('save')" 
				onmouseout= "return changeImageBack('save')" 
				onmousedown="return handleMDown('save')" 
				onclick="setTimeout('document.forms[0].submit();', 1000); document.getElementById('pleasewaitDiv').style.visibility = 'visible';" 
			><img name="save" src="../images/savebutton.png" alt="Saves This Form" /></a>

			<%-- <input id="cencelButton" type="button" style="width:60px;"  onclick="confirmHmsCancel();" value="Cancel" />
			--%>
			<a href="#"  onmouseover="return changeImage('cancel')" 
						 onmouseout= "return changeImageBack('cancel')" 
						 onmousedown="return handleMDown('cancel')" 
						 onclick="confirmPortalCancel();"
			><img name="cancel" src="../images/cancelbutton.png" alt="Cancel This Form & go to HomePage" /></a>
		
		</td>
       </tr>
	</table>
</div>
<script type="text/javascript">
     changeWidth(document.getElementById('outterDiv'));
     changeWidthInSubmit(document.getElementById('submitDiv'));
</script>