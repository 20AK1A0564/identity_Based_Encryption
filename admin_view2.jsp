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
				<li class="current"><a href="admin_view2.jsp"><b>PKG</b></a></li>
					<li><a href="admin_view.jsp"><b>BACK</b></a></li>
					
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
    <div id="menu"> 
      <div style="position:absolute; left:251px;  top:120px;"> 
        <ul>
          <li><a href="user_view.jsp"><font color="#CC3300" size="+1"><b>USER REGISTRATION DETAILS</b></font></a></li>
          <br>
          <li><a href="file_view99.jsp"><font color="#CC3300" size="+1"><b>VIEW 
             DATA</b></font></a></li>
         <br>
          <li><a href="acpowner.jsp"><font color="#CC3300" size="+1"><b>PRIVATE KEY GENERATOR</b></font></a></li>
                
        </ul>
      </div>
    </div>
    <div style="position:absolute; left:56px;  top:330px;"> 
      <marquee direction="right">
      <img src="images/administration_icon.jpg" width="200" height="50"> <img src="images/administration_icon.jpg" width="200" height="50"> 
      <img src="images/administration_icon.jpg" width="200" height="50"> <img src="images/administration_icon.jpg" width="200" height="50"> 
      <img src="images/administration_icon.jpg" width="200" height="50">
      </marquee>
    </div>
    <div style="position:absolute; left:56px;  top:25px;"> 
      <marquee direction="left">
      <img src="images/administration_icon.jpg" width="200" height="50"> <img src="images/administration_icon.jpg" width="200" height="50"> 
      <img src="images/administration_icon.jpg" width="200" height="50"> <img src="images/administration_icon.jpg" width="200" height="50"> 
      <img src="images/administration_icon.jpg" width="200" height="50">
      </marquee>
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