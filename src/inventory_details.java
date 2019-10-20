import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;
//import java.sql.Statement;

//import javax.servlet.http.HttpSession;

public class inventory_details {
	Connection conn=null;
	PreparedStatement st1=null;
	PreparedStatement st=null;
	public boolean check(int cust_id) throws SQLException {
		
		conn = DbConnector.getInstance();
		String query1 = "select retailer_id from customer1 where cust_id=? and retailer_id is not null";
			st1 = conn.prepareStatement(query1);
			System.out.println("prepared statement");
			st1.setInt(1, cust_id);
			System.out.println("set 1");
			ResultSet rs=st1.executeQuery();
			System.out.println("Resultset");
			if(rs.next()) {
				System.out.println("ifif");
				return true;
			}
			
			rs.close();
			st1.close();
			conn.close();
			return false;
			
	}
	public List<List<String>> search_inventory(String STB_type,String billing_type) throws SQLException{
			List<String> al=null;
		  List emp_list =new ArrayList();
		  String query = "select stb.stb_type,stb.stb_features,stb.stb_length,stb.stb_breadth,stb.stb_width,stb.stb_price,stb.stb_installation_charges,stb.stb_upgradation_charges,stb.stb_discount,stb.stb_billing_type,stb.stb_refundable_deposit_amount from stb inner join stb_inventory1 on stb.stb_type = stb_inventory1.stb_type where (stb.stb_type = ? AND stb.stb_billing_type = ? AND stb_inventory1.stb_status='unassigned')";
		 
		  st = conn.prepareStatement(query);
		  st.setString(1,STB_type);
		  st.setString(2,billing_type);
		  System.out.println("query " + query);
		  ResultSet  rs = st.executeQuery();
		  
		  while(rs.next()){
		  al  = new ArrayList();
		  
		  al.add(rs.getString(1));
		  al.add(rs.getString(2));
		  al.add(Double.toString(rs.getDouble(3)));
		  al.add(Double.toString(rs.getDouble(4)));
		  al.add(Double.toString(rs.getDouble(5)));
		  al.add(Double.toString(rs.getDouble(6)));
		  al.add(Double.toString(rs.getDouble(7)));
		  al.add(Double.toString(rs.getDouble(8)));
		  al.add(Double.toString(rs.getDouble(9)));
		  al.add(rs.getString(10));
		  al.add(Double.toString(rs.getDouble(11)));
		  System.out.println("al :: "+al);
		  emp_list.add(al);
		  
		 
		  }
		  return emp_list;

		  
	}
}
