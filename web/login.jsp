
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <link rel = "stylesheet"
   type = "text/css"
   href = "css/readStyle.css" />
    </head>
<body>
 <div class="wrap">    
     
            <!--Header-->
            
            <%@ include file="includes/header.jsp" %>
            
            <!--Menu-->
            
            <%@ include file="includes/normalMenu.jsp" %>
     
        <div class="main">
        <h1>Admin Login</h1>
        
        
        <ul>
            <li><a href="smallRead">List Customers</a></li>
            <li><a href="add">Add a Customer</a></li>
        </ul>
        
        <%@ include file="includes/search.jsp" %>
        </div><!--end main--> 
        
        <!--Footer-->
        
        <%@ include file="includes/footer.jsp" %>
      
 </div><!-- end wrap-->
</body>
</html>
