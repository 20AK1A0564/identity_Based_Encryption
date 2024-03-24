<%@ page import="java.sql.*"%>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CP-ABE</title>

<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}

function valid()
{
var aa=document.s.fn.value;
if(aa=="")
{
alert("Enter Data Name");
document.s.fn.focus();
return false;
}

var aaa=document.s.file.value;
if(aaa=="")
{
alert("Chosse File");
document.s.file.focus();
return false;
}

}

</script>

</head>
<body>
	<div id="container">  	  
    	<div id="header">
        	
    <div id="logo"> 
      	
      <div style="position:absolute; left:36px;  top:80px;"> 
        <div align="left"><font color="#FFFFFF" size="4"><strong><b><h1>Identity-Based Encryption</h1>
</b></strong></font> </div>
      </div>
    </div>
            
            <div id="menu">
				<ul>
				<li class="current"><a href="user.jsp"><b>USER</b></a></li>
					<li><a href="user2.jsp"><b>BACK</b></a></li>
					
				</ul>
			</div>
            <div class="cleaner"></div>
        </div>

        <div id="content_area_top">
		</div>
        	  
  <div> <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      <strong><em><font color="#990000" size="+1" face="Times New Roman"  
	  style="text-decoration:underline">User Upload Data</font></em></strong> 
    <table>
<tr>
<td>
       <div> 
	   <img src="images/cloudfilestorage.jpg" width="220" height="200"></div>      
</td>

<td>
    <form name="s" action="file_upload1.jsp" method="get" onSubmit="return valid()">
      <table align="center"  width="350">
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>DATANAME</strong></font></td>
          <td> <input type="text" name="fn" class="b"></td>
        </tr>
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>File</strong></font></td>
          <td><input type="file" name="file" class="b"></td>
        </tr>
        <tr> 
          <td></td>
          <td><input type="submit" name="s" value="submit" class="b1" > &nbsp;&nbsp;&nbsp;&nbsp; 
            <input type="reset" name="r" value="clear" class="b1"></td>
        </tr>
      </table>
    </form>
  </div>
		  
        <!-- Primary content area end -->
      </div>
            <div class="cleaner">
			
			
			</div>
        </div><!-- End Of Content area top -->
        
      </td>
<td>
 <div> 
	   <img src="images/cloudfilestorage.jpg" width="220" height="200"></div> 
	<div id="footer">
	
    	
    </div><!-- End Of Container -->
	</td></tr>
</table>
<!--  Free CSS Templates by freecsstemplates.in  -->
</body>
</html>