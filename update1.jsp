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

var b=document.s.pass.value;
if(b=="")
{
alert("Enter Password");
document.s.pass.focus();
return false;
}


var k = document.s.mob.value;
if(k=="")
{
alert("Enter mobile number");
document.s.mob.focus();
return false;
}
if(isNaN(k))
{
alert("Enter mobile number in numbers");
document.s.mob.focus();
return false;
}
if(k.charAt(0)!=9)
{
alert("Enter the correct mobile no");
document.s.mob.focus();
return false;
}
if(k.length!=10)
{
alert("Enter 10 digits");
document.s.mob.focus();
return false;
}

var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var m=emailfilter.test(document.s.eid.value);
if(m==false)
{
alert("Please enter a valid Email Id");
document.s.eid.focus();
return false;
}

}

</script>


</head>
<body>
<%
 java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
	 
	 String name=request.getParameter("un");
  String uid=request.getParameter("uid");
  session.setAttribute("name",name);
  session.setAttribute("uid",uid);
  String mobile=null,email=null;
 
  try
  {
  Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");

PreparedStatement ps=con.prepareStatement("select mobile,email from user where name='"+name+"' AND userid='"+uid+"'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 //name1=rs.getString(1);
//userid=rs.getString(2);
 mobile=rs.getString(1);
email=rs.getString(2);
}
}
 catch(Exception e1)
{
out.println(e1.getMessage());

}
%>

	<div id="container">  	  
    	<div id="header">
        	
    <div id="logo"> 
      	
      <div style="position:absolute; left:36px;  top:80px;"> 
        <div align="left"><font color="#FFFFFF" size="5"><storng><b><h1>Identity-Based Encryption</h1>
</b></strong></font> </div>
      </div>
    </div>
            
            <div id="menu">
				<ul>
				<li class="current"><a href="sign_up.jsp"><b>SIDN UP</b></a></li>
					<li><a href="index.html"><b>BACK</b></a></li>
					<li><a href="update.jsp"><b>UPDATE PROFILE</b></a></li>
					
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
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      <strong><em><font color="#990000" size="+1" face="Times New Roman"  
	  style="text-decoration:underline">Update Profile</font></em></strong> <br/>
      <br>
    <form name="s" action="update2.jsp" method="get" onSubmit="return valid()">
      <table align="center" cellpadding="10" cellspacing="10" width="400">
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>Name</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="un" class="b" value="<%=name%>"></td>
        </tr>
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>User ID</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="uid" class="b" value="<%=uid%>"></td>
        </tr>
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>Password</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="pass" class="b"></td>
        </tr>
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>Mobile</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="mob" class="b" value="<%=mobile%>"></td>
        </tr>
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>Email ID</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="eid" class="b" value="<%=email%>"></td>
        </tr>
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>Date</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="date" class="b" value="<%=strDateNew1%>"></td>
        </tr>
        <tr> 
          <td></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="s" value="Update" class="b1" > 
            &nbsp;&nbsp;&nbsp; <input type="reset" name="r" value="clear" class="b1"></td>
        </tr>
      </table>
    </form>
  </div>
  
  
        <!-- Primary content area end -->
      </div>
            <div class="cleaner">
			
			
			</div>
        </div><!-- End Of Content area top -->
        
       <div style="position:absolute; left:156px;  top:290px;"> 
		    <img src="images/update_profile.gif" width="150" height="150">
			</div> 
			<div style="position:absolute; left:756px;  top:290px;"> 
		    <img src="images/update_profile.gif" width="150" height="150">
			</div>  
            

	<div id="footer">
	
    	
    </div><!-- End Of Container -->
	
<!--  Free CSS Templates by freecsstemplates.in  -->
</body>
</html>