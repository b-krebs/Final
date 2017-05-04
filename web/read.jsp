
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Database</title>
        <link rel = "stylesheet"
   type = "text/css"
   href="css/readStyle.css" />
    </head>
    
    <% String table= (String) request.getAttribute("table"); %>
    
    
    <body>
        
        <div class="wrap">    
     
            <!--Header-->
            
            <%@ include file="includes/header.jsp" %>
            
            <!--Menu-->
            
            <%@ include file="includes/menu.jsp" %>
     
        <div class="main">
        
        
        <h1>Customer Database</h1>
        
        
        <%= table %>
        
        
        
        </div><!--end main--> 
        
        <!--Footer-->
        
        <%@ include file="includes/footer.jsp" %>
      
 </div><!-- end wrap-->
    </body>
</html>
