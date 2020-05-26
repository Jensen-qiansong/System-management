<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditStudent.aspx.cs" Inherits="Admin_EditStudent" %>

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
              Current Location：UpdateStudent information
          </TD></TR>
        <TR>
          <TD height=2 align="left">
              <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                  <tr>
                      <td align="center" class="buttom" colspan="6" style="width: 100%; height: 22px">
                          UpdateStudent information</td>
                  </tr>
                  <tr>
                      <td align="center" class="td2" style="width: 10%; height: 21px">
                          Login：</td>
                      <td class="td2" colspan="3" style="height: 21px">
                          <asp:TextBox ID="txtUserName" runat="server" CssClass="label" Width="149px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
                              ErrorMessage="Required"></asp:RequiredFieldValidator></td>
                  </tr>
                  <tr>
                      <td align="center" class="td2" style="width: 10%; height: 21px">
                          Password：</td>
                      <td class="td2" colspan="3" style="height: 21px">
                          <asp:TextBox ID="txtUserPwd" runat="server" CssClass="label" TextMode="Password"
                              Width="149px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtUserPwd"
                              ErrorMessage="Required"></asp:RequiredFieldValidator></td>
                  </tr>
                  <tr>
                      <td align="center" class="td2" style="width: 10%; height: 21px">
                          EMail：</td>
                      <td class="td2" colspan="3" style="height: 21px">
                          <asp:TextBox ID="txtEmal" runat="server" CssClass="label" Width="262px"></asp:TextBox></td>
                  </tr>
                  <tr>
                      <td align="center" class="td2" style="width: 10%; height: 21px">
                          UserAcademic Num：</td>
                      <td class="td2" colspan="3" style="height: 21px">
                          <asp:TextBox ID="txtNumber" runat="server" CssClass="label" Width="158px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNumber"
                              ErrorMessage="Required"></asp:RequiredFieldValidator></td>
                  </tr>
                  <tr>
                      <td align="center" class="td2" style="width: 10%; height: 21px">
                          Realname：</td>
                      <td class="td2" colspan="3" style="height: 21px">
                          <asp:TextBox ID="TxtUserTrueName" runat="server" CssClass="label" Width="100px"></asp:TextBox></td>
                  </tr>
                      <tr>
                <td align="center" style="height: 27px">
                    college：</td>
                <td style="height: 27px">
                    <asp:TextBox ID="XueYuanName" runat="server" Width="152px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="XueYuanName"
                        ErrorMessage="Required"></asp:RequiredFieldValidator></td>
            </tr>
                  <tr>
                      <td align="center" class="td2" style="width: 10%; height: 21px">
                          department：</td>
                      <td class="td2" colspan="3" style="height: 21px">
                          <asp:TextBox ID="TxtXiName" runat="server" CssClass="label" Width="202px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtXiName"
                              ErrorMessage="Required"></asp:RequiredFieldValidator></td>
                  </tr>
                     <tr>
                      <td align="center" class="td2" style="width: 10%; height: 21px">
                          Class：</td>
                      <td class="td2" colspan="3" style="height: 21px">
                          <asp:TextBox ID="BanJiName" runat="server" CssClass="label" Width="202px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="BanJiName"
                              ErrorMessage="Required"></asp:RequiredFieldValidator></td>
                  </tr>
                  <tr>
                      <td align="center" class="td2" style="width: 10%; height: 21px">
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
                      <td align="center" class="td2" style="width: 10%; height: 126px">
                          Userdescribe：</td>
                      <td class="td2" colspan="3" style="height: 126px">
                          <asp:TextBox ID="TxtUserDs" runat="server" CssClass="label" Height="127px" TextMode="MultiLine"
                              Width="827px"></asp:TextBox></td>
                  </tr>
              </table>
          </TD></TR>
          <tr>
              <td align="center" height="2">
                  <asp:Button ID="btn_Submit" runat="server" CssClass="button60" OnClick="btn_Submit_Click"
                      Text="Update" /></td>
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
