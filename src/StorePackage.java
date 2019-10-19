import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;
import java.time.format.DateTimeFormatter;  
import java.time.LocalDateTime;    

public class StorePackage {
	
	Connection con=null;
	PreparedStatement st10=null;
	public double store(String arr[],int cust_id) throws SQLException {
		con = DbConnector.getInstance();
		String query="select * from customer_packages where cust_id=?";
		PreparedStatement pp=con.prepareStatement(query);
		pp.setInt(1, cust_id);
		ResultSet rs1= pp.executeQuery();
		if(rs1.next()) {
			System.out.println("entered ResultSet");
			String query3="delete from customer_packages where cust_id="+cust_id;
			Statement px=con.createStatement();
			px.executeUpdate(query3);
		}
		String query1="insert into customer_packages values(?,?,?,?)";
		st10=con.prepareStatement(query1);
		System.out.println(query1);
		Map<String,Integer> m= new HashMap<String,Integer>();
		m.put("package1",50);
		m.put("package2",75);
		m.put("package3",59);
		m.put("package4",40);
		double tot=0;
		for(int i=0;i<arr.length;i++) {
			tot+=m.get(arr[i]);
		}
		System.out.println(tot);
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("MM/dd/yyyy");  
		LocalDateTime now = LocalDateTime.now();  
		String date=dtf.format(now);
		String packages = String.join(",",arr);
		st10.setInt(1,cust_id);
		st10.setString(2, packages);
		st10.setDouble(3,tot);
		st10.setString(4, date);
		st10.executeUpdate();
		System.out.println(cust_id);
		System.out.println(packages);
		System.out.println(date);
		System.out.println(dtf.format(now));
		return tot;
	}

	/*public  packagebill() {
		// TODO Auto-generated method stub
		
	}*/
}
