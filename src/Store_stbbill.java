import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Store_stbbill {
	
	Connection conn=null;
	PreparedStatement sttt=null;
    public void assign_stb(String stb_type,String bill_type,int cust_id) throws SQLException {
    	 conn = DbConnector.getInstance();
    	 System.out.println("id "+cust_id);
		  System.out.println("stb type"+stb_type+" "+bill_type);
		  String query = "select stb_inventory.stb_mac_id from stb inner join stb_inventory on stb.stb_type = stb_inventory.stb_type where (stb.stb_type = ? AND stb.stb_billing_type = ? AND stb_inventory.stb_status='unassigned')";
		  sttt = conn.prepareStatement(query);
		  sttt.setString(1,stb_type);
		  sttt.setString(2,bill_type);
		  System.out.println("query " + query);
		  ResultSet  rs1 = sttt.executeQuery();
		  rs1.next();
		  int mac_id= rs1.getInt(1);
		  
		  String query2="UPDATE stb_inventory SET stb_status ='assigned' WHERE stb_mac_id=?";
		  PreparedStatement ppp=conn.prepareStatement(query2);
		  ppp.setInt(1,mac_id);
		  System.out.println("query " + query2);
		  ppp.executeUpdate();
		  rs1.close();
		  sttt.close();
		  ppp.close();
		  return;
		  
     }
     public void store_bill(int cust_id,String bill_type, double amount) throws SQLException {
    	 conn = DbConnector.getInstance();
    	 System.out.println(cust_id+"   "+bill_type+"    "+amount);
    	 Statement ppp=conn.createStatement();
    	 String query1="insert into stb_bill values("+cust_id+",'"+bill_type+"',"+amount+")";
    	 /*ppp.setInt(1,cust_id);
		 ppp.setString(2,bill_type);
		 ppp.setDouble(3, amount);*/
		 ppp.executeUpdate(query1);
    	 ppp.close();
     }
}
