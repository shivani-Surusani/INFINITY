import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.sql.ResultSetMetaData;
import java.sql.SQLException;
//import java.util.*;
public class login {
	Connection conn=null;
	PreparedStatement st1=null;
	
	public boolean loginup(String cust_id,String Password) throws SQLException{
		conn = DbConnector.getInstance();
	
		  String query = "select * from login where cust_id =? and Password =?";
		  System.out.println("query " + query);
		  PreparedStatement st1= conn.prepareStatement(query);
		  System.out.println(cust_id + Password);
		  int custid = Integer.parseInt(cust_id);
		  st1.setInt(1, custid);
		  st1.setString(2,Password);
		  ResultSet  rs = st1.executeQuery();
		 		  if (rs.next()) {
		 			  return true;
		 		  }
		 		  else return false;
		
	
	
	}
}
