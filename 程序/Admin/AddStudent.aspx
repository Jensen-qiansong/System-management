<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="Admin_AddStudent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Student Apartment Management System</title>
    <LINK href="../css/Style.css"type=text/css rel=stylesheet><LINK  href="../css/Manage.css" type=text/css rel=stylesheet>
</head>
<body>
    <FORM id=form1   runat=server style="margin-left:15px;">
<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
  <TBODY>
  <TR>
    <TD width=15><IMG src="../images/new_019.jpg" border=0></TD>
    <TD width="100%" background=../images/new_020.jpg height=20></TD>
    <TD width=15><IMG src="../images/new_021.jpg" 
  border=0></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
  <TBODY>
  <TR>
    <TD width=15 background=../images/new_022.jpg style="height: 61px"><IMG 
      src="../images/new_022.jpg" border=0> </TD>
    <TD vAlign=top width="100%" bgColor=#ffffff style="height: 61px">
      <TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
        <TR>
          <TD class=manageHead>
              Current Location：AddStudent information
          </TD></TR>
        <TR>
          <TD height=2 align="left">
              <table cellpadding="2" class="registeInfo" style="width: 100%">
            <tr>
                <td align="right" style="height: 27px; width: 128px;">
                    name：</td>
                <td style="height: 27px">
                    <asp:TextBox ID="UserTrueName" runat="server" Width="100px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UserTrueName"
                        ErrorMessage="Required"></asp:RequiredFieldValidator></td>
            </tr> 
            <tr>
                <td align="right" style="height: 26px; width: 128px;">
                    Sex：</td>
                <td style="height: 26px">
                    <asp:DropDownList ID="Sex" runat="server">
                        <asp:ListItem>man</asp:ListItem>
                        <asp:ListItem>female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
           
            <tr>
                <td align="right" style="height: 27px; width: 128px;">
                    EMail：</td>
                <td style="height: 27px">
                    <asp:TextBox ID="Email" runat="server" Width="144px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Email"
                        ErrorMessage="Format Error" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
            </tr>
              <tr>
                <td align="right" style="height: 27px; width: 128px;">
                    college：</td>
                <td style="height: 27px">
                    <asp:TextBox ID="XueYuanName" runat="server" Width="152px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="XueYuanName"
                        ErrorMessage="Required"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" style="height: 27px; width: 128px;">
                    department：</td>
                <td style="height: 27px">
                    <asp:TextBox ID="XiName" runat="server" Width="152px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="XiName"
                        ErrorMessage="Required"></asp:RequiredFieldValidator></td>
            </tr>
              <tr>
                <td align="right" style="height: 27px; width: 128px;">
                    Class：</td>
                <td style="height: 27px">
                    <asp:TextBox ID="BanJiName" runat="server" Width="152px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="BanJiName"
                        ErrorMessage="Required"></asp:RequiredFieldValidator></td>
            </tr>
                  <tr>
                 <td align="center" class="td2" style="width: 128px; height: 21px">
                     dormitory building：</td>
                 <td class="td2" colspan="3" style="height: 21px">
                     <asp:DropDownList ID="DropDownList1" runat="server" Width="111px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                     </asp:DropDownList>
                     <input id="Hidden1" runat="server" type="hidden" /></td>
             </tr>
            <tr>
               
               <td style="WIDTH: 128px; HEIGHT: 21px" class="td2" align="center">
                   Dormitory number</td>
               <td style="HEIGHT: 21px" class="td2" colspan="3">
                   <asp:DropDownList ID="DropDownList2" runat="server"
                       Width="148px">
                   </asp:DropDownList></td>
               
               </tr>
                  <tr>
                      <td align="center" class="td2" style="width: 128px; height: 21px">
                          Photo：</td>
                      <td class="td2" colspan="3" style="height: 21px">
                          <asp:Image ID="Image2" runat="server" Height="129px" Width="138px" /><br />
                          <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox><input
                              id="file1" runat="server" class="inputBox" style="width: 159px" type="file" />
                          <asp:Button ID="Button3" runat="server" CausesValidation="False" OnClick="Button3_Click"
                              Text="Upload photos" />
                          <asp:Label ID="Label2" runat="server" Visible="False" Width="87px"></asp:Label></td>
                  </tr>
                  <tr>
                <td align="right" style="height: 35px; width: 128px;">
                    Login Account(Academic Num)：</td>
                <td style="height: 35px">
                    <asp:TextBox ID="UserName" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName"
                        ErrorMessage="Required"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" style="width: 128px; height: 24px;">
                    Password：</td>
                <td style="height: 24px">
                    <asp:TextBox ID="UserPwd" runat="server" TextMode="Password" Width="149px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="UserPwd"
                        ErrorMessage="Required"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" style="height: 66px; width: 128px;">
                    remarks：</td>
                <td style="height: 66px">
                    <asp:TextBox ID="UserDs" runat="server" Width="100%" Height="93px" TextMode="MultiLine" OnTextChanged="UserDs_TextChanged">no</asp:TextBox></td>
            </tr>
        </table>
          </TD></TR>
          <tr>
              <td align="center" height="2">
                  <asp:Button ID="btn_Submit" runat="server" CssClass="button60" OnClick="btn_Submit_Click"
                      Text="Add" />
                  <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
          </tr>
      </TABLE>
      </TD>
    <TD width=15 background=../images/new_023.jpg style="height: 61px"><IMG 
      src="../images/new_023.jpg" border=0> </TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
  <TBODY>
  <TR>
    <TD width=15><IMG src="../images/new_024.jpg" border=0></TD>
    <TD align=middle background=../images/new_025.jpg 
    height=15 style="width: 100%"></TD>
    <TD width=15><IMG src="../images/new_026.jpg" 
  border=0></TD></TR></TBODY></TABLE>
</FORM>
</body>
</html>
