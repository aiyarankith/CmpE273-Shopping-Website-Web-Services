<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Web Store Theme - Contact</title>
<meta name="keywords" content="web store, contact page, form, free templates, website templates, CSS, HTML" />
<meta name="description" content="Web Store Theme, Contact Form, free CSS template provided by templatemo.com" />
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
                    <li><a href="<%=request.getContextPath()%>/Product?action=getproducts">Computers</a></li>
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
            <h3><a class="sidebar_title" href="http://www.forwallpaper.com" title="Click" rel="nofollow" target="_blank">Newsletter</a></h3>
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
        	<h2>Login Page</h2>
			
            <div class="col col_13">
            <p>Sign In with your account<a href="http://validator.w3.org/check?uri=referer" rel="nofollow"></a><a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"></a>.</p>
            <div id="contact_form">
               <form method="post" action="SignUp">
                    
                    <label for="author">Email Address:</label> <input type="text" id="author" name="user" class="required input_field" />
                    <div class="cleaner h10"></div>

                    <label for="subject">Password:</label> <input type="password" name="pass" id="subject" class="input_field" />
                    <div class="cleaner h10"></div>
        
					<input type="submit" value="Send" id="submit" name="submit" class="submit_btn float_l" />
					<input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" />
					                    <div class="cleaner h10"></div>
										                    <div class="cleaner h10"></div>
					If you don't have an account <a href="registration.jsp">CREATE ONE</a>
                </form>
            </div>
		</div>
            
        </div> <!-- END of content -->
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