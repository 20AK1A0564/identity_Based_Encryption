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
    <div id="menu"> 
      <div style="position:absolute; left:290px;  top:130px;"> 
        <ul>
          <li> <a href="file_upload.jsp"><font color="#CC3300" size="+1"><b>DATA 
            PRODUCTION</b></font></a></li>
          <br>
          <li><a href="file_view11.jsp"><font color="#CC3300" size="+1"><b>VIEW 
            YOUR DATA</b></font></a></li>
          <br>
          <li><a href="total.jsp"><font color="#CC3300" size="+1"><b> DATA DETAILS</b></font></a></li>
  	  <br>
          <!--<li><a href="acpowner.jsp"><font color="#CC3300" size="+1"><b>ACP Owner</b></font></a></li> -->
                
</ul>
      </div>
    </div>
    <div style="position:absolute; left:566px;  top:100px;"> <img src="images/cloud1.jpg" width="320" height="220"> 
    </div>
    <div style="position:absolute; left:6px;  top:100px;"> <img src="images/cloud2.jpg" width="320" height="200"> 
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