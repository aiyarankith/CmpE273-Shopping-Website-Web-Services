package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import Connection.ServiceProxy;

/**
 * Servlet implementation class Product
 */
@WebServlet("/Product")
public class Product extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServiceProxy proxy=new ServiceProxy(); 
	int count =0;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Product() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		String action=request.getParameter("action");
		String qdone;
		
		if (action.equals("getproducts")){
		 	try{			
			 	
			 	proxy.setEndpoint("http://localhost:8080/SimpleMarketPlace/services/Service");
				qdone = proxy.getproducts();
				String[] result = qdone.split(",");
				System.out.println("first :" +result[4]);
				
				//Product Details in session
				session.setAttribute("productdetails", qdone);
				
				if(qdone.length()!=0){
					session.setAttribute("userSession", session);
					session.setAttribute("p_name1", result[2]);
					session.setAttribute("p_price1", result[4]);

					session.setAttribute("p_name2", result[7]);
					session.setAttribute("p_price2", result[9]);
					
					session.setAttribute("p_name3", result[12]);
					session.setAttribute("p_price3", result[14]);


					System.out.println("Session ::"+session.getAttribute("p_price2"));
					
					response.sendRedirect(request.getContextPath()+"/View/computers.jsp");				
				}
				else{
					out.println(qdone.substring(6));
					out.println("\n <a href=\"SignUp.jsp\"><br>Go back to SignUp again</a>");
				}
			 }
			 catch (Exception e)
		        {
		            e.printStackTrace();
		        }
		}
		else if (action.equals("product1")){
		 	try{			
			 	
			 	proxy.setEndpoint("http://localhost:8080/SimpleMarketPlace/services/Service");
				qdone = proxy.getproducts();
				String[] result = qdone.split(",");
				System.out.println("inside product 1 first :" +result[4]);
				
				if(qdone.length()!=0){
					session.setAttribute("userSession", session);
					session.setAttribute("p_name1", result[2]);
					session.setAttribute("p_price1", result[4]);
					session.setAttribute("p_id1", result[1]);
					session.setAttribute("p_desc1", result[3]);
					session.setAttribute("p_qty1", result[5]);


					System.out.println("Session ::"+session.getAttribute("p_price1"));
					
					response.sendRedirect(request.getContextPath()+"/View/productdetail1.jsp");				
				}
				else{
					out.println(qdone.substring(6));
					out.println("\n <a href=\"SignUp.jsp\"><br>Go back to SignUp again</a>");
				}
			 }
			 catch (Exception e)
		        {
		            e.printStackTrace();
		        }
		}
		else if (action.equals("product2")){
		 	try{			
			 	
			 	proxy.setEndpoint("http://localhost:8080/SimpleMarketPlace/services/Service");
				qdone = proxy.getproducts();
				String[] result = qdone.split(",");
				System.out.println("inside product 2 first :" +result[4]);
				
				if(qdone.length()!=0){
					session.setAttribute("userSession", session);
					session.setAttribute("p_id2", result[6]);
					session.setAttribute("p_name2", result[7]);
					session.setAttribute("p_desc2", result[8]);
					session.setAttribute("p_price2", result[9]);
					session.setAttribute("p_qty2", result[10]);


					System.out.println("Session ::"+session.getAttribute("p_price2"));
					
					response.sendRedirect(request.getContextPath()+"/View/productdetail2.jsp");				
				}
				else{
					out.println(qdone.substring(6));
					out.println("\n <a href=\"SignUp.jsp\"><br>Go back to SignUp again</a>");
				}
			 }
			 catch (Exception e)
		        {
		            e.printStackTrace();
		        }
		}
		else if (action.equals("product3")){
		 	try{			
			 	
			 	proxy.setEndpoint("http://localhost:8080/SimpleMarketPlace/services/Service");
				qdone = proxy.getproducts();
				String[] result = qdone.split(",");
				System.out.println("inside product 3 first :" +result[15]);
				
				if(qdone.length()!=0){
					session.setAttribute("userSession", session);
					session.setAttribute("p_id3", result[11]);
					session.setAttribute("p_name3", result[12]);
					session.setAttribute("p_desc3", result[13]);
					session.setAttribute("p_price3", result[14]);
					session.setAttribute("p_qty3", result[15]);


					System.out.println("Session ::"+session.getAttribute("p_price3"));
					
					response.sendRedirect(request.getContextPath()+"/View/productdetail3.jsp");				
				}
				else{
					out.println(qdone.substring(6));
					out.println("\n <a href=\"SignUp.jsp\"><br>Go back to SignUp again</a>");
				}
			 }
			 catch (Exception e)
		        {
		            e.printStackTrace();
		        }
		}
		
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	ArrayList <String> pid = new ArrayList<String>();
	ArrayList <String> pname = new ArrayList<String>();
	ArrayList <String> pprice = new ArrayList<String>();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		String action=request.getParameter("action");
		String qdone;
		
		if (action.equals("addtocart")){
		 	try{			
			 	proxy.setEndpoint("http://localhost:8080/SimpleMarketPlace/services/Service");
				System.out.println("inside add to cart :"+session);
							
				if(session.getAttribute("firstname") != null){
					
					String submit = request.getParameter("submitType");
					qdone = proxy.addcart(submit);
					String[] result = qdone.split(",");

					if(qdone.length()!=0){
						session.setAttribute("userSession", session);
						
						System.out.println("pid.size()"+pid.size());
						
						if(session.getAttribute("cart") == null){
							session.setAttribute("cart","value");
							pid.clear();
							pname.clear();
							pprice.clear();
							
							pid.add(result[1]);
							pname.add(result[2]);
							pprice.add(result[4]);
						
						}else {
					    	System.out.println ("adding up");
					    	pid.add(result[1]);
							pname.add(result[2]);
							pprice.add(result[4]);
						}				    
					    
					}
					session.setAttribute("pid", pid);
					session.setAttribute("pname", pname);
					session.setAttribute("pprice", pprice);
					session.setAttribute("count", pid.size());

					//System.out.println("Session ::"+pid.size());
					response.sendRedirect(request.getContextPath()+"/View/shoppingcart.jsp");				
				
			 }
		 	}
			 catch (Exception e)
		        {
		            e.printStackTrace();
		        }
		}
		else if (action.equals("checkout")){
		 	try{			
			 	proxy.setEndpoint("http://localhost:8080/SimpleMarketPlace/services/Service");
				System.out.println("inside Checkout :"+session);
							
				if(session.getAttribute("firstname") != null){
					
					String transaction_id = null;
					int qty = 0;
					ArrayList<String> p_id = (ArrayList<String>) session.getAttribute("pid");
              		ArrayList<String> p_name = (ArrayList<String>) session.getAttribute("pname");
              		ArrayList<String> p_price = (ArrayList<String>) session.getAttribute("pprice");                    		
            		
              		java.sql.Timestamp timestamp = new java.sql.Timestamp(new java.util.Date().getTime());
            		Random random = new Random();
              		int randomnumber = random.nextInt(5000);
              		  		
              		transaction_id = "TRANSID"+randomnumber+timestamp;
              		for (int i = 0; i<p_id.size(); i++){
              			for(int j = 0; j<1; j++){
	              			if(p_id.get(i) == p_id.get(j)){
	              				qty++;
	              			}
              			}
         
                  		qdone = proxy.checkout(transaction_id, p_id.get(i), p_name.get(i), p_price.get(i), qty);

              		}
              		session.setAttribute("transaction_id", transaction_id);
					response.sendRedirect(request.getContextPath()+"/View/summary.jsp");				
				
			 }
		 	}
			 catch (Exception e)
		        {
		            e.printStackTrace();
		        }
		}

	}

}
