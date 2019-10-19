import java.sql.Connection;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class finalbill {
	Connection conn=null;
	PreparedStatement st=null;
	
	
	public List<String> finalbill1(String cust_name,String STB_type,String billing_type,Integer cust_id,double stb_amt,double pck_amt) throws SQLException{
			List<String> al2=null;
			
	      Double tot_amt=stb_amt+pck_amt;
	      System.out.println(" tax"+tot_amt);
	     
		 
		  al2  = new ArrayList<String>();
		  
		  al2.add(cust_name);
		  al2.add(STB_type);
//		  System.out.println("a"+al1);
		  al2.add(billing_type);
	//	  System.out.println("a"+al1);
		  al2.add(Integer.toString(cust_id));
//		  System.out.println("a"+al1);
		 
		  al2.add(Double.toString(tot_amt));
//		
		 
		  System.out.println("al2 :: "+al2);
	
		 
		  return al2;

		  
	}

}