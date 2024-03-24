<%@ page import="java.sql.*"%>
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
var aa=document.s.ffn.value;
if(aa=="")
{
alert("Enter Data Name");
document.s.ffn.focus();
return false;
}

var aaa=document.s.key1.value;
if(aaa=="")
{
alert("Chosse File");
document.s.key1.focus();
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
				<li class="current"><a href="user2.jsp"><b>USER</b></a></li>
					<li><a href="user.jsp"><b>BACK</b></a></li>
					
				</ul>
			</div>
            <div class="cleaner"></div>
        </div>

        <div id="content_area_top">
		</div>
        	  
  <div class="box"> <br>
    <br>
    <br>
    <br>
    <br>
    <div style="position:absolute; left:266px;  top:6px;"> <br>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><em><font color="#990000" size="+1" face="Times New Roman"  
	  style="text-decoration:underline">View Data</font></em></strong> <br/>
        <br>
      <form name="s" action="file_view2.jsp" method="get" onSubmit="return valid()">
        <table align="center"  width="350">
          <tr> 
            <td><font face="Times New Roman"  size="+1"><strong>DATA NAME</strong></font></td>
            <td> <input type="text" name="ffn" class="b"></td>
          </tr>
          <tr> 
            <td><font face="Times New Roman"  size="+1"><strong>DATA KEY</strong></font></td>
            <td> <input type="text" name="key1" class="b"></td>
          </tr>
          <tr> 
            <td></td>
            <td><input type="submit" name="s" value="submit" class="b1" > &nbsp;&nbsp;&nbsp;&nbsp; 
              <input type="reset" name="r" value="clear" class="b1"></td>
          </tr>
        </table>
      </form>
    </div>
    <div style="position:absolute; left:566px;  top:150px;"> <img src="images/cloud1.jpg" width="300" height="220"> 
    </div>
    <div style="position:absolute; left:6px;  top:150px;"> <img src="images/cloud2.jpg" width="300" height="200"> 
    </div>
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