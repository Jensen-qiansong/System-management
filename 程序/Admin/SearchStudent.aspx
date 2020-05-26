<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchStudent.aspx.cs" Inherits="Admin_SearchStudent" %>

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
              Current Location：SearchStudent information
          </TD></TR>
        <TR>
          <TD height=2 align="left">
              <table cellpadding="2" class="registeInfo" style="width: 100%">
            <tr>
                <td align="right" style="height: 26px; width: 143px;">
                    Sex：</td>
                <td style="height: 26px">
                    <asp:DropDownList ID="Sex" runat="server">
                        <asp:ListItem>Not limited</asp:ListItem>
                        <asp:ListItem>man</asp:ListItem>
                        <asp:ListItem>female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right" style="height: 27px; width: 143px;">
                    name：</td>
                <td style="height: 27px">
                    <asp:TextBox ID="UserTrueName" runat="server" Width="100px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td align="right" style="height: 27px; width: 143px;">
                    Academic Num：</td>
                <td style="height: 27px">
                    <asp:TextBox ID="UserNubmer" runat="server" Width="213px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td align="right" style="height: 27px; width: 143px;">
                    EMail：</td>
                <td style="height: 27px">
                    <asp:TextBox ID="Email" runat="server" Width="144px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td align="right" style="height: 27px; width: 143px;">
                    department：</td>
                <td style="height: 27px">
                    <asp:TextBox ID="XiName" runat="server" Width="152px"></asp:TextBox>
                    </td>
            </tr>
                  <tr>
                      <td align="right" style="width: 143px; height: 27px">
                          Class：</td>
                      <td style="height: 27px">
                          <asp:TextBox ID="TextBox1" runat="server" Width="152px"></asp:TextBox></td>
                  </tr>
                  <tr>
                      <td align="right" style="width: 143px; height: 27px">
                          Dormitory number：</td>
                      <td style="height: 27px">
                          <asp:TextBox ID="TextBox2" runat="server" Width="152px"></asp:TextBox></td>
                  </tr>
        </table>
          </TD></TR>
          <tr>
              <td align="center" height="2">
                  <asp:Button ID="btn_Submit" runat="server" CssClass="button60" OnClick="btn_Submit_Click"
                      Text="Search" /></td>
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
