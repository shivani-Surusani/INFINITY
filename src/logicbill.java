import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class logicbill {
	Connection conn=null;
	PreparedStatement st=null;
	
	
	public List<String> bill_inventory(String STB_type,String billing_type,Integer cust_id) throws SQLException{
			List<String> al1=null;
			conn = DbConnector.getInstance();
		  String query = "select stb_inventory1.stb_type,stb_inventory1.stb_mac_id,stb_inventory1.stb_serial_number,stb.stb_price,stb.stb_installation_charges,stb.stb_refundable_deposit_amount,stb.stb_discount from stb inner join stb_inventory1 on stb.stb_type = stb_inventory1.stb_type where (stb.stb_type = ? AND stb.stb_billing_type = ? AND stb_inventory1.stb_status='unassigned')";
		  System.out.println("id "+cust_id);
		  System.out.println("stb type"+STB_type+" "+billing_type);
		  st = conn.prepareStatement(query);
		  st.setString(1,STB_type);
		  st.setString(2,billing_type);
		  System.out.println("query " + query);
		  ResultSet  rs1 = st.executeQuery();
		  rs1.next();
		  String query2="select cust_fname,cust_lname from customer1 where cust_id=?";
		  
		  PreparedStatement st2 = conn.prepareStatement(query2);
		  st2.setInt(1,cust_id);
		  System.out.println("query " + query2);
		  ResultSet  rs2 = st2.executeQuery();
		  rs2.next();
		  String name=rs2.getString(1)+rs2.getString(2);
		  System.out.println("rdftv"+name+"\n");
	      Double tax=0.12*((rs1.getDouble(4)) +(rs1.getDouble(5))+(rs1.getDouble(6))-(rs1.getDouble(7)));
	      Double amount=(rs1.getDouble(4)) +(rs1.getDouble(5))+(rs1.getDouble(6))-(rs1.getDouble(7));
	      System.out.println(" tax"+tax);
	     
		 
		  al1  = new ArrayList<String>();
		  
		  al1.add(name);
		  al1.add(rs1.getString(1));
//		  System.out.println("a"+al1);
		  al1.add(rs1.getString(2));
	//	  System.out.println("a"+al1);
		  al1.add(Double.toString(rs1.getDouble(3)));
//		  System.out.println("a"+al1);
		  al1.add(Double.toString(rs1.getDouble(4)));
//		  System.out.println("a"+al1);
		  al1.add(Double.toString(rs1.getDouble(5)));
//		  System.out.println("a"+al1);
		  al1.add(Double.toString(rs1.getDouble(6)));
//		  System.out.println("a"+al1);
		  al1.add(Double.toString(rs1.getDouble(7)));
//		  System.out.println("a"+al1);
		  al1.add(Double.toString(tax));
		  al1.add(Double.toString(amount));
		 
		  System.out.println("al1 :: "+al1);
	//	  break;
	//	 }
	//	  }
		  rs1.close();
		  st.close();
		  return al1;

		  
	}

}
