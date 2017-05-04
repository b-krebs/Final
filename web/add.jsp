

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Customer</title>
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
        
        
        
        <h1>Add A New Customer</h1>
        <form name="addForm" action="addCustomer" method="get">
            <table class="add">
                <tbody>
                    
                    <tr>
                        <td>First Name:</td>
                        <td><input type="text" name="firstName" value="" size="50"></td>
                    </tr>
                    
                    <tr>
                        <td>Last Name:</td>
                        <td><input type="text" name="lastName" value="" size="50"></td>
                    </tr>
                    
                    <tr>
                        <td>Address Line 1:</td>
                        <td><input type="text" name="addr1" value="" size="50"></td>
                    </tr>
                    
                    <tr>
                        <td>Address Line 2:</td>
                        <td><input type="text" name="addr2" value="" size="50"></td>
                    </tr>
                    
                    <tr>
                        <td>City:</td>
                        <td><input type="text" name="city" value="" size="50"></td>
                    </tr>
                    
                    <tr>
                        <td>State:</td>
                        <td><input type="text" name="custState" value="" size="50"></td>
                    </tr>
                    
                    <tr>
                        <td>Zip:</td>
                        <td><input type="text" name="zip" value="" size="50"></td>
                    </tr>
                    
                    <tr>
                        <td>Email:</td>
                        <td><input type="text" name="email" value="" size="50"></td>
                    </tr>
                    
                </tbody>
            </table>
            
            <br><br>
            
            <input type="reset" value="Clear" id="clear">
                    <input type="submit" value="Add" id="add">
            
            
        </form>
        
     
         </div><!--end main--> 
        
        <!--Footer-->
        
        <%@ include file="includes/footer.jsp" %>
      
 </div><!-- end wrap-->
       
    </body>
</html>
