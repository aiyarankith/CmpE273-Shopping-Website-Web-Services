package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;

import Connection.ServiceProxy;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 ServiceProxy proxy=new ServiceProxy();  
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//Sign Out -- Destroy Session
		String action=request.getParameter("action");
				
		if(action.equals("signout")){
			HttpSession session = request.getSession(false);
		 	System.out.println("logout");
		 	session.removeAttribute("pid");
		    session.removeAttribute("pname");
		    session.removeAttribute("pprice");
		    
		    session.invalidate();
		    System.out.println("After Logout"+session);
		    response.sendRedirect(request.getContextPath()+"/View/index.jsp");			
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String qdone;		
		 try{			
			 	String user = request.getParameter("user");
			 	String pass = request.getParameter("pass");
			 	proxy.setEndpoint("http://localhost:8080/SimpleMarketPlace/services/Service");
				qdone = proxy.signUp(user,pass);

				HttpSession session = request.getSession();
				String[] result = qdone.split(",");
				System.out.println("first :" +result[2]);
				
				if(qdone.length()!=0){
					session.setAttribute("userSession", session);
					session.setAttribute("firstname", result[2]);
					proxy.timestamp(result[2]);

					System.out.println("Session ::"+session.getAttribute("firstname"));
					
					response.sendRedirect("index.jsp");				
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

