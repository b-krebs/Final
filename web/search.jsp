

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
        
        <link rel = "stylesheet"
   type = "text/css"
   href = "css/inputStyle.css" />
        
    </head>
    <body>
        <div class="wrap">    
     
            <!--Header-->
            
            <%@ include file="includes/header.jsp" %>
            
            <!--Menu-->
            
            <%@ include file="includes/menu.jsp" %>
     
        <div class="main">
        
        
        <h1>Search Customers</h1>
        
        <form name="searchForm" action="search" method="get">
            
            <input type="text" name="searchVal" value="" />
            
            <br><br>
            
            <input type="submit" name="submit" value="Search" />
                   
                   
        </form>
        
        
        </div><!--end main--> 
        
        <!--Footer-->
        
        <%@ include file="includes/footer.jsp" %>
      
 </div><!-- end wrap-->
   
    
    </body>
</html>
