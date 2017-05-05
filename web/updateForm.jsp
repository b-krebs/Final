
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Customers"%>
<% Customers customer= (Customers) request.getAttribute("customer"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update A Customer</title>
        
        <link rel = "stylesheet"
   type = "text/css"
   href = "css/inputStyle.css" />
        
    </head>
    <body>
        
       <div class="wrap">    
     
            <!--Header-->
            
            <%@ include file="includes/header.jsp" %>
            
            <!--Menu-->
            
            <%@ include file="includes/normalMenu.jsp" %>
     
        <div class="main">
       
            
            <h1>Update A Customer</h1>
        
        <form name="updateForm" action="updateCustomer" method="get">
        <table class="update">
            <tbody>
                
                    <tr>
                        <td>Customer ID:</td>
                        <td><input type="text" name="id" value="<%= customer.getCustID() %>" readonly /></td>
                    </tr>
                
                    <tr>
                        <td>First Name:</td>
                        <td><input type="text" name="firstName" value="<%= customer.getFirstName() %>" ></td>
                    </tr>
                    
                   
                    <tr>
                        <td>Last Name:</td>
                        <td><input type="text" name="lastName" value="<%= customer.getLastName() %>" ></td>
                    </tr>
                    
                    <tr>
                        <td>Address Line 1:</td>
                        <td><input type="text" name="addr1" value="<%= customer.getAddr1() %>"></td>
                    </tr>
                    
                    <tr>
                        <td>Address Line 2:</td>
                        <td><input type="text" name="addr2" value="<%= customer.getAddr2() %>"></td>
                    </tr>
                    
                    <tr>
                        <td>City:</td>
                        <td><input type="text" name="city" value="<%= customer.getCity() %>"></td>
                    </tr>
                    
                    <tr>
                        <td>State:</td>
                        <td><input type="text" name="state" value="<%= customer.getCustState() %>"></td>
                    </tr>
                    
                    <tr>
                        <td>Zip:</td>
                        <td><input type="text" name="zip" value="<%= customer.getZip() %>"></td>
                    </tr>
                    
                    <tr>
                        <td>Email:</td>
                        <td><input type="text" name="state" value="<%= customer.getEmailAddr() %>"></td>
                    </tr>
                    
                </tbody>
                
               
        </table>
                    <br>
                    
                    <input type="reset" value="Clear" id="clear">
                    <input type="submit" value="Update" id="update">
            
        </form>
                    
                    
                    <br><br>
            
                    <%@ include file="includes/search.jsp" %>
                    
          </div><!--end main--> 
        
        <!--Footer-->
        
        <%@ include file="includes/footer.jsp" %>
      
 </div><!-- end wrap-->
        
    </body>
</html>
