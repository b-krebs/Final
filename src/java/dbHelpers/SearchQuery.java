
package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customers;


public class SearchQuery {
    
    private Connection conn;
    private ResultSet results;
    
    public SearchQuery () {
        
       Properties propa= new Properties();
       InputStream instr=getClass().getResourceAsStream("dbConn.properties");
        try {
            propa.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
       
       String driver= propa.getProperty("driver.name");
       String url= propa.getProperty("server.name");
       String username= propa.getProperty("user.name");
       String passwd= propa.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void doSearch(String input) {
        
        try {
            String query = "SELECT * FROM Customers WHERE (UPPER(firstName) LIKE ? OR UPPER(lastName) LIKE ? ) ORDER BY custID ASC";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, "%" + input.toUpperCase() + "%");
            ps.setString(2, "%" + input + "%");
            this.results = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public String getHTMLtable(){
        
           String table="";
            table += "<table class='read'>";
            table += "<thead>";
            table +="<tr>";
            
            table +="<tr id=topRow>";
               
                table+="<th>";
                    table+="ID";
                table+="</th>";
                
                table+="<th>";
                    table+="First Name";
                table+="</th>";
                
                table+="<th>";
                    table+="Last Name";
                table+="</th>";
                
                table+="<th>";
                    table+="Address Line 1";
                table+="</th>";
                
                table+="<th>";
                    table+="Address Line 2";
                table+="</th>";
                
                table+="<th>";
                    table+="City";
                table+="</th>";
                
                table+="<th>";
                    table+="State";
                table+="</th>";
                
                table+="<th>";
                    table+="Zip";
                table+="</th>";
                
                table+="<th>";
                    table+="Email";
                table+="</th>";
                
                
                table+="<th>";
                table+=" ";
                table+="</th>";
                    
               table +="</tr>";
               table += "</thead>";
               table += "<tbody>";
               
               
        try{
            if(!this.results.isBeforeFirst()) {
                table += "<tr>";
                table += "<td colspan='6'> Sorry, this record does not exist</td>";
                table += "</tr>";
            }
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }       
               
               
         try {   
            while(this.results.next()){
                
                 Customers customer=new Customers();
                customer.setCustID(this.results.getInt("custID"));
                customer.setFirstName(this.results.getString("firstName"));
                customer.setLastName(this.results.getString("lastName"));
                customer.setAddr1(this.results.getString("addr1"));
                customer.setAddr2(this.results.getString("addr2"));
                customer.setCity(this.results.getString("city"));
                customer.setCustState(this.results.getString("custState"));
                customer.setZip(this.results.getInt("zip"));
                customer.setEmailAddr(this.results.getString("emailAddr"));
                
                
                
               
               
                table += "<tr>";
                
                       
                    table += "<td>";
                        table += customer.getCustID();  
                    table +="</td>";
                    
                    table += "<td>";
                        table += customer.getFirstName();  
                    table +="</td>";
                    
                    table += "<td>";
                        table += customer.getLastName();  
                    table +="</td>";
                    
                    table += "<td>";
                        table += customer.getAddr1();  
                    table +="</td>";
                    
                    table += "<td>";
                        table += customer.getAddr2();  
                    table +="</td>";
                    
                     table += "<td>";
                        table += customer.getCity();  
                    table +="</td>";
                    
                    table += "<td>";
                        table += customer.getCustState();  
                    table +="</td>";
                    
                    table += "<td>";
                        table += customer.getZip();  
                    table +="</td>";
                    
                    table += "<td>";
                        table += customer.getEmailAddr();  
                   table +="</td>";
                   
                   table+="<td>";
                        table +="<a href=update?custID="+ customer.getCustID()+"> Update</a>" 
                                + "<a href=delete?custID=" + customer.getCustID() + "> Delete </a>";
                        
                    table +="</td>";     
                    
                             
                
                table +="</tr>";
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        table += "</tbody>";
        table +="</table>";
        return table;
        
    }
}
