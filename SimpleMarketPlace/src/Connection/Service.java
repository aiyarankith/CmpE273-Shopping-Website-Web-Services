package Connection;

import javax.jws.WebService;

@WebService
public class Service {	
	DatabaseConnection db=new DatabaseConnection();
	
	public String signUp(String username, String pwd)
	{
		System.out.println("Inside Signup");
		String result;
		
		/**This space is left for validation and manipulation of 
		input values entered by the user as a part of the server side validation*/
		
		result = db.signUp(username,pwd);
		
		return result;//this value is returned to the calling servlet
	}
	public String registration(String f_name,String l_name, String email, String password)
	{
		System.out.println("Inside Registration");
		String result;
		
		/**This space is left for validation and manipulation of 
		input values entered by the user as a part of the server side validation*/
		
		result = db.registration(f_name, l_name, email, password);
		
		return result;//this value is returned to the calling servlet
	}
	public String timestamp(String f_name)
	{
		System.out.println("Inside TimeStamp");
		String result;
		
		/**This space is left for validation and manipulation of 
		input values entered by the user as a part of the server side validation*/
		
		result = db.timestamp(f_name);
		
		return result;
	}
	public String getproducts()
	{
		System.out.println("Inside Get Products");
		String result;
		
		/**This space is left for validation and manipulation of 
		input values entered by the user as a part of the server side validation*/
		
		result = db.getproducts();
		
		return result;
	}
	public String addcart(String submit)
	{
		System.out.println("Inside Add cart");
		String result;
		
		/**This space is left for validation and manipulation of 
		input values entered by the user as a part of the server side validation*/
		
		result = db.addcart(submit);
		
		return result;
	}
	public String checkout(String trans_id, String p_id, String p_name, String p_price, int qty)
	{
		System.out.println("Inside Checkout");
		String result;
		
		/**This space is left for validation and manipulation of 
		input values entered by the user as a part of the server side validation*/
		
		result = db.checkout(trans_id, p_id, p_name, p_price, qty);
		
		return result;
	}
}
