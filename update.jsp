<%@ page import="java.sql.*"%>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>dpaas</title>

<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}

function valid()
{
var aa=document.s.un.value;
if(aa=="")
{
alert("Enter Name");
document.s.un.focus();
return false;
}

var a=document.s.uid.value;
if(a=="")
{
alert("Enter User ID");
document.s.uid.focus();
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
        <div align="left"><font color="#FFFFFF" size="4"><storng><b><h1>Identity-Based Encryption</h1>
</b></strong></font> </div>
      </div>
    </div>
            
            <div id="menu">
				<ul>
				<li class="current"><a href="sign_up.jsp"><b>SIDN UP</b></a></li>
					<li><a href="index.html"><b>BACK</b></a></li>
					
				</ul>
			</div>
            <div class="cleaner"></div>
        </div>

        <div id="content_area_top">
		</div>
        	
  <div class="box"> <br>
    <br>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      <strong><em><font color="#990000" size="+1" face="Times New Roman"  
	  style="text-decoration:underline">Update Profile</font></em></strong> <br/>
      <br>
    <form name="s" action="update1.jsp" method="get" onSubmit="return valid()">
      <table align="center" cellpadding="10" cellspacing="10" >
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>Name</strong></font></td>
          <td><input type="text" name="un" class="b"></td>
        </tr>
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>User ID</strong></font></td>
          <td> <input type="text" name="uid" class="b"></td>
        </tr>
        <tr> 
          <td></td>
          <td><input type="submit" name="s" value="submit" class="b1" > &nbsp;&nbsp;&nbsp; 
            <input type="reset" name="r" value="clear" class="b1"></td>
        </tr>
      </table>
    </form>
  </div>
  
    <div style="position:absolute; left:156px;  top:260px;"> 
		    <img src="images/update_profile.gif" width="150" height="150">
			</div> 
			<div style="position:absolute; left:756px;  top:260px;"> 
		    <img src="images/update_profile.gif" width="150" height="150">
			</div> 
        <!-- Primary content area end -->
      </div>
            <div class="cleaner">
			
			
			</div>
        </div><!-- End Of Content area top -->
        
      
            

	<div id="footer">
	
    	
    </div><!-- End Of Container -->
	
<!--  Free CSS Templates by freecsstemplates.in  -->
</body>
</html>