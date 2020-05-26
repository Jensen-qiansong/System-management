<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Student Apartment Management System</title>
    <LINK rel="stylesheet" type="text/css" 
href="images/login.css">
<LINK rel="stylesheet" type="text/css" href="images/dialog.css">
<LINK 
rel="stylesheet" type="text/css" href="images/login(1).css">
</head>
<body bgcolor="#66ccff">
    <form id="form1" runat="server">
   <!--re_top -->
        <br />
        <br />
        <br />
        <br />
<DIV class="login"><IMG style="float: left; width: 501px; height: 347px;" src="images/bg_lvx.png">
<DIV class="re_login">

<DIV class="re_login_box">
<DIV class="dl font">   	    		Student Apartment Management System  	    	</DIV>
<DIV class="w1"><SPAN>UserName：	
    <input id="TxtUserName" runat="server" name="userName" type="text" /></SPAN></DIV>
<DIV class="w1"><SPAN>Passwrod：	
    <input id="TxtPassword" runat="server" name="userPwd" type="password" /></SPAN></DIV>
<DIV class="w1"><SPAN>Role：<asp:DropDownList ID="DropDownList1" runat="server"   Width="191px">
        <asp:ListItem>Manager</asp:ListItem>
        <asp:ListItem>Student</asp:ListItem>
     
    </asp:DropDownList></SPAN><A><SPAN></SPAN></A></DIV>
    
    <DIV class="w1"><SPAN>validate code
        <asp:TextBox ID="txtyan" runat="server" Width="85px"></asp:TextBox><asp:Label ID="lblyanzheng"
                  runat="server" BackColor="DeepSkyBlue" ForeColor="#004000"></asp:Label><asp:Label
                      ID="Label1" runat="server" ForeColor="Red"></asp:Label></SPAN><A><SPAN></SPAN></A></DIV>
<DIV class="w1" align="center">
    <asp:ImageButton ID="ibut_Login" runat="server" Height="40px" ImageUrl="images/dl.gif"
        OnClick="ibut_Login_Click" Width="116px" /><BR>
    &nbsp;</DIV>
</DIV><!--re_login_box -->
</DIV><!--re_login --></DIV>

<DIV class="clear"></DIV>
<DIV class="re_footer">
<P>Student Apartment Management System</P></DIV>
    </form>
</body>
</html>
