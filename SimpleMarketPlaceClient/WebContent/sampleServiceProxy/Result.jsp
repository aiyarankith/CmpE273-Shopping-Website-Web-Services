<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleServiceProxyid" scope="session" class="Connection.ServiceProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleServiceProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleServiceProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleServiceProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        Connection.Service getService10mtemp = sampleServiceProxyid.getService();
if(getService10mtemp == null){
%>
<%=getService10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 15:
        gotMethod = true;
        String f_name_1id=  request.getParameter("f_name18");
            java.lang.String f_name_1idTemp = null;
        if(!f_name_1id.equals("")){
         f_name_1idTemp  = f_name_1id;
        }
        java.lang.String timestamp15mtemp = sampleServiceProxyid.timestamp(f_name_1idTemp);
if(timestamp15mtemp == null){
%>
<%=timestamp15mtemp %>
<%
}else{
        String tempResultreturnp16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(timestamp15mtemp));
        %>
        <%= tempResultreturnp16 %>
        <%
}
break;
case 20:
        gotMethod = true;
        String f_name_2id=  request.getParameter("f_name23");
            java.lang.String f_name_2idTemp = null;
        if(!f_name_2id.equals("")){
         f_name_2idTemp  = f_name_2id;
        }
        String l_name_3id=  request.getParameter("l_name25");
            java.lang.String l_name_3idTemp = null;
        if(!l_name_3id.equals("")){
         l_name_3idTemp  = l_name_3id;
        }
        String email_4id=  request.getParameter("email27");
            java.lang.String email_4idTemp = null;
        if(!email_4id.equals("")){
         email_4idTemp  = email_4id;
        }
        String password_5id=  request.getParameter("password29");
            java.lang.String password_5idTemp = null;
        if(!password_5id.equals("")){
         password_5idTemp  = password_5id;
        }
        java.lang.String registration20mtemp = sampleServiceProxyid.registration(f_name_2idTemp,l_name_3idTemp,email_4idTemp,password_5idTemp);
if(registration20mtemp == null){
%>
<%=registration20mtemp %>
<%
}else{
        String tempResultreturnp21 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(registration20mtemp));
        %>
        <%= tempResultreturnp21 %>
        <%
}
break;
case 31:
        gotMethod = true;
        String username_6id=  request.getParameter("username34");
            java.lang.String username_6idTemp = null;
        if(!username_6id.equals("")){
         username_6idTemp  = username_6id;
        }
        String pwd_7id=  request.getParameter("pwd36");
            java.lang.String pwd_7idTemp = null;
        if(!pwd_7id.equals("")){
         pwd_7idTemp  = pwd_7id;
        }
        java.lang.String signUp31mtemp = sampleServiceProxyid.signUp(username_6idTemp,pwd_7idTemp);
if(signUp31mtemp == null){
%>
<%=signUp31mtemp %>
<%
}else{
        String tempResultreturnp32 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signUp31mtemp));
        %>
        <%= tempResultreturnp32 %>
        <%
}
break;
case 38:
        gotMethod = true;
        java.lang.String getproducts38mtemp = sampleServiceProxyid.getproducts();
if(getproducts38mtemp == null){
%>
<%=getproducts38mtemp %>
<%
}else{
        String tempResultreturnp39 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getproducts38mtemp));
        %>
        <%= tempResultreturnp39 %>
        <%
}
break;
case 41:
        gotMethod = true;
        String submit_8id=  request.getParameter("submit44");
            java.lang.String submit_8idTemp = null;
        if(!submit_8id.equals("")){
         submit_8idTemp  = submit_8id;
        }
        java.lang.String addcart41mtemp = sampleServiceProxyid.addcart(submit_8idTemp);
if(addcart41mtemp == null){
%>
<%=addcart41mtemp %>
<%
}else{
        String tempResultreturnp42 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addcart41mtemp));
        %>
        <%= tempResultreturnp42 %>
        <%
}
break;
case 46:
        gotMethod = true;
        String trans_id_9id=  request.getParameter("trans_id49");
            java.lang.String trans_id_9idTemp = null;
        if(!trans_id_9id.equals("")){
         trans_id_9idTemp  = trans_id_9id;
        }
        String p_id_10id=  request.getParameter("p_id51");
            java.lang.String p_id_10idTemp = null;
        if(!p_id_10id.equals("")){
         p_id_10idTemp  = p_id_10id;
        }
        String p_name_11id=  request.getParameter("p_name53");
            java.lang.String p_name_11idTemp = null;
        if(!p_name_11id.equals("")){
         p_name_11idTemp  = p_name_11id;
        }
        String p_price_12id=  request.getParameter("p_price55");
            java.lang.String p_price_12idTemp = null;
        if(!p_price_12id.equals("")){
         p_price_12idTemp  = p_price_12id;
        }
        String qty_13id=  request.getParameter("qty57");
        int qty_13idTemp  = Integer.parseInt(qty_13id);
        java.lang.String checkout46mtemp = sampleServiceProxyid.checkout(trans_id_9idTemp,p_id_10idTemp,p_name_11idTemp,p_price_12idTemp,qty_13idTemp);
if(checkout46mtemp == null){
%>
<%=checkout46mtemp %>
<%
}else{
        String tempResultreturnp47 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(checkout46mtemp));
        %>
        <%= tempResultreturnp47 %>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>