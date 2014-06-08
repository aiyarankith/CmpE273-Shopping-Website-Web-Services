package Connection;

import java.sql.*;


public class DatabaseConnection {
	
	Connection con = null;
	static ResultSet rs;
    Statement stmt = null;
	
	DatabaseConnection(){		
		try {			
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amazon","root","13111990");
				stmt = con.createStatement();
				if(!con.isClosed())
					System.out.println("Successfully Connected!!!");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InstantiationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

	public String signUp(String userName, String pwd){
		String result = "";
		String f_name = "";
		String l_name = "";
		String email = "";
		String id = "";
		PreparedStatement ps=null;

		try {
			ps=con.prepareStatement("select * from registration where email=? and pwd=?");
			ps.setString(1, userName);
			ps.setString(2, pwd);

			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				id = rs.getString(1);
				f_name = rs.getString(2);
				l_name = rs.getString(3);
				email = rs.getString(4);
				result = result + ","+id+","+f_name+","+l_name+","+email;
				System.out.println(result);				
			}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public String registration(String f_name,String l_name, String email, String password){
		String result = "";
		int rowcount;
		try {
			String query = "Insert into registration (f_name, l_name, email, pwd) values ('" + f_name + "', '" + l_name + "','" + email + "', '" + password + "')";
			rowcount=stmt.executeUpdate(query);
			if(rowcount > 0){
				result="true";
				System.out.println("Insert Successful");
			}
			else{
				result="false: The data could not be inserted in the database.";
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public String timestamp(String username){
		String result = "";
		PreparedStatement ps=null;

		java.sql.Timestamp timestamp = new java.sql.Timestamp(new java.util.Date().getTime());
		try {
			ps=con.prepareStatement("UPDATE REGISTRATION SET TIME_STAMP=? WHERE F_NAME=?");
			ps.setTimestamp(1, timestamp);
			ps.setString(2, username);
			
			ps.executeUpdate();
			result = "true";	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	public String getproducts(){
		String result = "";
		String p_id = "";
		String p_name = "";
		String p_desc = "";
		String p_price = "";
		String p_qty = "";
		PreparedStatement ps=null;

		try {
			ps=con.prepareStatement("select * from product");

			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				p_id = rs.getString(1);
				p_name = rs.getString(2);
				p_desc = rs.getString(3);
				p_price = rs.getString(4);
				p_qty = rs.getString(5);
				result = result + ","+p_id+","+p_name+","+p_desc+","+p_price+","+p_qty;
				System.out.println(result);				
			}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	public String addcart(String submit){
		String result = "";
		String p_id = "";
		String p_name = "";
		String p_desc = "";
		String p_price = "";
		String p_qty = "";
		PreparedStatement ps=null;

		try {
			ps=con.prepareStatement("select * from product where product_id = ?");
			ps.setString(1, submit);

			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				p_id = rs.getString(1);
				p_name = rs.getString(2);
				p_desc = rs.getString(3);
				p_price = rs.getString(4);
				p_qty = rs.getString(5);
				result = result + ","+p_id+","+p_name+","+p_desc+","+p_price+","+p_qty;
				System.out.println(result);				
			}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	public String checkout(String trans_id, String p_id, String p_name, String p_price, int qty){
		String result = "";
		int rowcount;
		try {
			String query = "Insert into transaction (transaction_id,product_id,product_name,price,qty) values ('" + trans_id + "', '" + p_id + "','" + p_name + "', '" + p_price + "', '" + qty + "')";
			rowcount=stmt.executeUpdate(query);
			if(rowcount > 0){
				result="true";
				System.out.println("Insert Successful");
			}
			else{
				result="false: The data could not be inserted in the database.";
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	

}
