<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.util.ArrayList"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Web Store Theme - Checkout</title>
<meta name="keywords" content="web store, checkout, free ecommerce templates, store templates, CSS, HTML" />
<meta name="description" content="Web Store Theme, Checkout, free CSS template provided by templatemo.com" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "templatemo_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script type="text/javascript">

function validateData() 
{
	
	var checkValueDelete=document.getElementById("radio1Delete").value;
	var addValue=document.getElementById("radio1").value;
	var card1=document.getElementById("card1").value;
	var cValue=document.getElementsByName("op");
	var len=cValue.length;
	var counter=0;
	

	for(var i=0;i<len;i++)
	{
		if(cValue[i].checked)
		{
			counter++;
		}
	}
	

	if(counter>0)
	{
		
		if(document.getElementById("radio1").checked)
		{
			var card1=document.getElementById("card1").value;

			if(card1!="")
			{
				var regularCard1=/^([0-9]{4})$/;
				if(!regularCard1.test(card1))
				{
					alert("Credit Card Number Should have 16 digits.");
					return false;
				}
				else
				{
				}
			}
			else
			{
				alert("Card Number Details should not be blank:");
				return false;
			}

			var card2=document.getElementById("card2").value;

			if(card2!="")
			{
				var regularCard2=/^([0-9]{4})$/;
				if(!regularCard2.test(card2))
				{
					alert("Credit Card Number Should have 16 digits.");
					return false;
				}
				else
				{
				}
			}
			else
			{
				alert("Card Number Details should not be blank:");
				return false;
			}

			var card3=document.getElementById("card3").value;

			if(card3!="")
			{
				var regularCard3=/^([0-9]{4})$/;
				if(!regularCard3.test(card3))
				{
					alert("Credit Card Number Should have 16 digits.");
					return false;
				}
				else
				{
				}
			}
			else
			{
				alert("Card Number Details should not be blank:");
				return false;
			}

			var card4=document.getElementById("card4").value;

			if(card4!="")
			{
				var regularCard4=/^([0-9]{4})$/;
				if(!regularCard4.test(card4))
				{
					alert("Credit Card Number Should have 16 digits.");
					return false;
				}
				else
				{
				}
			}
			else
			{
				alert("Card Number Details should not be blank:");
				return false;
			}

			var card5=document.getElementById("card5").value;
			if(card5!="")
			{
				var regular5=/^(([0][1-9]{1})|([1][0-2]{1}))$/;
				if(!regular5.test(card5))
						{
						alert("Expiry Month Should be between 01 to 12.");
						return false;
						}
				else
				{
					
				}
			}
			else
			{
				alert("Expiry Month Details Cannot Be Blank:");
				return false;
			}

			var card6=document.getElementById("card6").value;
			if(card6!="")
			{
				var regular6=/^([1][3-9]{1})$/;
				if(!regular6.test(card6))
						{
						alert("Expiry Year Between 13 to 19.");
						return false;
						}
				
				else
				{
					
				}
			}
			else
			{
				alert("Expiry Year Details Cannot Be Blank:");
				return false;
			}

			var card7=document.getElementById("card7").value;
			if(card7!="")
			{
				var regular7=/^(([0-9][0-9][1-9]{1})|([1-9][0-9][0-9]{1})|(([0-9][1-9][0-9]{1})))$/;
				if(!regular7.test(card7))
						{
						alert("CVV Number Should not Contain 000 and is of 3 Digits.");
						return false;
						}
				
				else
				{
					
				}
			}
			else
			{
				alert("CVV Number Should Not Be Blank.");
				return false;
			}
				
			
		}
		else if(document.getElementById("radio1Delete").checked)
		{
			return true;
		}
		else
		{
			alert("Please select an  Option(Checkout / Delete):");
			return false;
			
		}
		
		
	}
	else
	{
	alert("Plese Accept Licence & Terms!!!");
	return false;
	}	
		
}

	function Checkvalue()
	{
	if(document.getElementById("radio1").checked)
	{
	document.getElementById("card1").disabled=false;
	document.getElementById("card2").disabled=false;
	document.getElementById("card3").disabled=false;
	document.getElementById("card4").disabled=false;
	document.getElementById("card5").disabled=false;
	document.getElementById("card6").disabled=false;
	document.getElementById("card7").disabled=false;
	return true;
	}
	else if(document.getElementById("radio1Delete").checked)
	{	
		
		document.getElementById("card1").disabled=true;
		document.getElementById("card2").disabled=true;
		document.getElementById("card3").disabled=true;
		document.getElementById("card4").disabled=true;
		document.getElementById("card5").disabled=true;
		document.getElementById("card6").disabled=true;
		document.getElementById("card7").disabled=true;

		document.getElementById("card1").value="";
		document.getElementById("card2").value="";
		document.getElementById("card3").value="";
		document.getElementById("card4").value="";
		document.getElementById("card5").value="";
		document.getElementById("card6").value="";
		document.getElementById("card7").value="";
		
		
		return true;
	}
	
}

	

	

</script>

</head>

<body id="subpage">

<div id="templatemo_wrapper">
	<div id="templatemo_header">
		<% if (session.getAttribute("firstname") == null) {%>
		    	<div id="site_title"><h1><a href="http://www.templatemo.com" rel="nofollow">Welcome</a></h1></div>
		
		<% } else { %>
    	<div id="site_title"><h1><a href="http://www.templatemo.com" rel="nofollow">Welcome <%=(String)session.getAttribute("firstname") %></a></h1></div>
        <% } %>
        <div id="header_right">
            <ul id="language">
                <li><a><img src="images/usa.png" alt="English" /></a></li>
                <li><a><img src="images/china.png" alt="Chinese" /></a></li>
                <li><a><img src="images/germany.png" alt="Germany" /></a></li>
                <li><a><img src="images/india.png" alt="Indian" /></a></li>
            </ul>
            <div class="cleaner"></div>
            <div id="templatemo_search">
                <form action="#" method="get">
                  <input type="text" value="Search" name="keyword" id="keyword" title="keyword" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
                  <input type="submit" name="Search" value="" alt="Search" id="searchbutton" title="Search" class="sub_btn"  />
                </form>
            </div>
         </div> <!-- END -->
    </div> <!-- END of header -->
    
    <div id="templatemo_menu" class="ddsmoothmenu">
        <ul>
            <li><a href="index.jsp" class="selected">Home</a></li>
            <li><a href="products.jsp">Products</a>
                <ul>
                    <li><a href="computers.jsp">Computers</a></li>
                    <li><a href="#">Books & Audible</a></li>
					<li><a href="#">Home, Garden & Tools</a></li>
					<li><a href="#">Toys, kids & Baby</a></li>
					<li><a href="#">Clothing, Shoes & Jewelry</a></li>
					<li><a href="#">Sports & Outdoors</a></li>
              </ul>
            </li>
            <li><a href="about.jsp">About</a>
            </li>
            <li><a href="faqs.jsp">FAQs</a></li>
			<li><a href="shoppingcart.jsp">Cart</a></li>
            <li><a href="contact.jsp">Contact</a></li>
			<% if (session.getAttribute("firstname") == null) {%>
            <li><a href="SignUp.jsp">Log In</a></li>
			<% } else {%>
			<li><a href="<%=request.getContextPath()%>/SignUp?action=signout">Log Out</a></li>
			<% } %>
        </ul>
        <br style="clear: left" />
    </div> <!-- end of templatemo_menu -->
	
	
    <div class="cleaner h20"></div>
    <div id="templatemo_main_top"></div>
    <div id="templatemo_main">
    	
        <div id="sidebar">
        	<h3>Categories</h3>
            <ul class="sidebar_menu">
			    <li><a href="#">Aenean et dolor diam</a></li>
                <li><a href="#">Aenean pulvinar</a></li>				
                <li><a href="#">Cras bibendum auctor</a></li>
                <li><a href="#">Donec sodales bibendum</a></li>				
            	<li><a href="#">Etiam in tellus</a></li>
                <li><a href="#">Hendrerit justo</a></li>     
                <li><a href="#">Integer interdum</a></li>				
                <li><a href="#">Maecenas a diam</a></li>
				<li><a href="#">Nullam in semper</a></li>
				<li><a href="#">Posuere in commodo</a></li>
				<li><a href="#">Tincidunt leo</a></li>
                <li><a href="#">Vestibulum blandit</a></li>
			</ul>
            <h3><a href="http://www.forwallpaper.com/search/delta.html" class="sidebar_title" title="Delta" rel="nofollow" target="_blank">Newsletter</a></h3>
            <p>Praesent aliquam mi id tellus pretium pulvinar in vel ligula.</p>
            <div id="newsletter">
                <form action="#" method="get">
                  <input type="text" value="Subscribe" name="email_newsletter" id="email_newsletter" title="email_newsletter" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
                  <input type="submit" name="subscribe" value="Subscribe" alt="Subscribe" id="subscribebtn" title="Subscribe" class="subscribebtn"  />
                </form>
                <div class="cleaner"></div>
            </div>
        </div> <!-- END of sidebar -->
       
        <div id="content">
       <% if (session.getAttribute("pid") != null ) { %>
        
         <form action="<%=request.getContextPath()%>/Product?action=checkout" method="post" onsubmit="return validateData();" >
        
       		<h2>Checkout</h2>
            <h5><strong>BILLING DETAILS</strong></h5>
            <div class="col col_13 checkout">
				Enter your full name as it is on the credit card:  
				<input type="text"  style="width:300px;"  />
            	E-MAIL
				<input type="text"  style="width:300px;"  />
                PHONE<br />
				<span style="font-size:10px">Please, specify your reachable phone number. YOU MAY BE GIVEN A CALL TO VERIFY AND COMPLETE THE ORDER.</span>
                <input type="text"  style="width:300px;"  />
            </div>
            
            <div class="col col_13 checkout">
            <table align="center">
				<tr>
				<td>
				<input type="radio" name="radio1" onchange="return Checkvalue();" id="radio1" value="ADD">CHECKOUT
				<input type="radio" name="radio1"  onchange="return Checkvalue();" id="radio1Delete" value="DELETE">DELETE
				</td>
				<td>
				</td>
				</tr>
				<tr><td></td><td></td></tr>
				<tr><td></td><td></td></tr>
				<tr>
				<td colspan="2" align="center" bgcolor="#2B74BD"><font color="white">CREDIT CARD DETAILS:</font></td>
				</tr>
				<tr><td></td><td></td></tr>
				<tr><td></td><td></td></tr>
				<tr>
				<td>
				<font><b>Card:  </b></font><input type="text" name="card1" id="card1" maxlength="4" size="5" disabled="disabled"></input>
				<input type="text" name="card2" id="card2" maxlength="4" size="5" disabled="disabled"></input>
				<input type="text" name="card3" id="card3" maxlength="4" size="5" disabled="disabled"></input>
				<input type="text" name="card4" id="card4" maxlength="4" size="5" disabled="disabled"></input>
				</td>
				<td>
				</td>
				</tr>
				<tr>
				<td>
				<font><b>Expiry Date:</b></font>   &nbsp&nbsp<input type="text" name="card5" id="card5" maxlength="2" size="2" disabled="disabled"></input> /
				<input type="text" name="card6" id="card6" maxlength="2" size="2" disabled="disabled"></input>
				</td>
				<td>
				</td>
				</tr>
				<tr>
				<td>
				 <font><b>CVV Number:</b></font> <input type="text" name="card7" id="card7" maxlength="3" size="2" disabled="disabled"></input>
				</td>
				</tr>
				<tr><td></td><td></td></tr>
				<tr>
				</tr></table>
            	
            </div>
            
            <div class="cleaner h50"></div>
            <h3>Shopping Cart</h3>
            <%
                      		ArrayList<String> p_id = (ArrayList<String>) session.getAttribute("pid");
                      		ArrayList<String> p_name = (ArrayList<String>) session.getAttribute("pname");
                      		ArrayList<String> p_price = (ArrayList<String>) session.getAttribute("pprice");                    		
                      		float sum = 0;
                      		for (int i = 0; i < p_id.size(); i++){
                      			sum = sum + Float.valueOf(p_price.get(i));
                      		}
                      		
            %>
            <h4>TOTAL: <strong>$<%= sum %></strong></h4>
			<p><input type="checkbox" name="op" id="op" />I have accepted the <a href="#">Terms of Use</a>.</p>
            <table style="border:1px solid #CCCCCC;" width="100%">
                <tr>
                    <td height="80px"> <img src="images/paypal.gif" alt="paypal" /></td>
                    <td width="400px;" style="padding: 0px 20px;">Recommended if you have a PayPal account. Fastest delivery time.
                    </td>
                    <td><input type="submit" class="more" name="ADD" value="PAYPAL" /></td>
                </tr>
                <tr>
                    <td  height="80px"><img src="images/2co.gif" alt="paypal" />
                    </td>
                    <td  width="400px;" style="padding: 0px 20px;">2Checkout.com, Inc. is an authorized retailer of goods and services provided by Template-Guide.com. 2CheckOut accepts customer orders via online checks, Visa, MasterCard, Discover, American Express, Diners, JCB and debit cards with the Visa, Mastercard logo.
                    </td>
                    <td><input type="submit" name="ADD" class="more" value="2CHECKOUT" /></td>
                </tr>
            </table>
           </form>
          <% } else { %>
          NOTHING TO CHECKOUT
          <% } %>
		</div>
        <div class="cleaner"></div>
    </div> <!-- END of main -->
    
    <div id="templatemo_footer">
    	<div class="col col_16">
        	<h4>Categories</h4>
            <ul class="footer_menu">
			    <li><a href="#">Aenean et dolor diam</a></li>
                <li><a href="#">Aenean pulvinar</a></li>				
                <li><a href="#">Cras bibendum auctor</a></li>
                <li><a href="#">Donec sodales bibendum</a></li>				
		  </ul>  
        </div>
        <div class="col col_16">
        	<h4>Pages</h4>
            <ul class="footer_menu">
            	<li><a href="#">Home</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Shipping</a></li>
                <li><a href="#">Privacy</a></li>
			</ul>  
        </div>
        <div class="col col_16">
        	<h4>Partners</h4>
            <ul class="footer_menu">
            	<li><a rel="nofollow" href="http://www.flashmo.com/">Free Flash Templates</a></li>
                <li><a rel="nofollow" href="http://www.templatemo.com/">Free CSS Templates</a></li>
                <li><a href="http://www.koflash.com/">Website Gallery</a></li>
                <li><a href="http://www.webdesignmo.com/blog/">Web Design Resources</a></li>
			</ul>  
        </div>
        <div class="col col_16">
        	<h4>Social</h4>
            <ul class="footer_menu">
            	<li><a href="#">Twitter</a></li>
                <li><a href="#">Facebook</a></li>
                <li><a href="#">Youtube</a></li>
                <li><a href="#">LinkedIn</a></li> 
		  </ul>  
        </div>
        <div class="col col_13 no_margin_right">
        	<h4>About Us</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur semper quam sit amet turpis rhoncus id venenatis tellus sollicitudin. Fusce ullamcorper, dolor non mollis pulvinar, turpis tortor commodo nisl. Validate <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>XHTML</strong></a> &amp; <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong>CSS</strong></a>.</p>
        </div>
        
        <div class="cleaner h40"></div>
		<center>
			Copyright © 2048 Your Company Name | Designed by <a href="http://www.templatemo.com" rel="nofollow" target="_parent">Free CSS Templates</a>
		</center>
    </div> <!-- END of footer -->   
   
</div>


<script type='text/javascript' src='js/logging.js'></script>
</body>
</html>