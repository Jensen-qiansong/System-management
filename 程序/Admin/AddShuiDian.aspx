<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddShuiDian.aspx.cs" Inherits="Admin_AddShuiDian" %>

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
              Current Location：AddUtilities information</TD></TR>
        <TR>
          <TD height=2 align="left">
              <table style="WIDTH: 100%" cellspacing="0" cellpadding="0" border="0">

            <tr>
               <td style="WIDTH: 100%; HEIGHT: 22px" class="buttom" align="center" colspan="6">
                   AddUtilities information</TD>
            </tr>
             <tr>
                 <td align="center" class="td2" style="width: 10%; height: 21px">
                     dormitory building：</td>
                 <td class="td2" colspan="3" style="height: 21px">
                     <asp:DropDownList ID="DropDownList1" runat="server" Width="111px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                     </asp:DropDownList></td>
             </tr>
            <tr>
               
               <td style="WIDTH: 10%; HEIGHT: 21px" class="td2" align="center">
                   Dormitory number</td>
               <td style="HEIGHT: 21px" class="td2" colspan="3">
                   <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                       Width="148px">
                   </asp:DropDownList></td>
               
               </tr>
             <tr>
                 <td align="center" class="td2" style="width: 10%; height: 21px">
                     Capacity：</td>
                 <td class="td2" colspan="3" style="height: 21px">
                     <asp:TextBox ID="TextBox7" runat="server" CssClass="label" ReadOnly="True" Width="65px"></asp:TextBox></td>
             </tr>
             <tr>
                 <td align="center" class="td2" style="width: 10%; height: 21px">
                     Free beds：</td>
                 <td class="td2" colspan="3" style="height: 21px">
                     <asp:TextBox ID="TextBox8" runat="server" CssClass="label" ReadOnly="True" Width="65px"></asp:TextBox></td>
             </tr>
             <tr>
                 <td align="center" class="td2" style="width: 10%; height: 21px">
                     Enrolled：</td>
                 <td class="td2" colspan="3" style="height: 21px">
                     <asp:TextBox ID="TextBox9" runat="server" CssClass="label" ReadOnly="True" Width="65px"></asp:TextBox></td>
             </tr>
             <tr>
                 <td align="center" class="td2" style="width: 10%; height: 21px">
                     storey：</td>
                 <td class="td2" colspan="3" style="height: 21px">
                     <asp:TextBox ID="TextBox1" runat="server" CssClass="label" Width="65px" ReadOnly="True"></asp:TextBox>
                     </td>
             </tr> <tr>
                 <td align="center" class="td2" style="width: 10%; height: 21px">
                     Cost type：</td>
                 <td class="td2" colspan="3" style="height: 21px">
                     <asp:DropDownList ID="DropDownList3" runat="server">
                         <asp:ListItem>water rate</asp:ListItem>
                         <asp:ListItem>electric charge</asp:ListItem>
                     </asp:DropDownList></td>
             </tr>
             <tr>
                 <td align="center" class="td2" style="width: 10%; height: 21px">
                     Cost amount：</td>
                 <td class="td2" colspan="3" style="height: 21px">
                     <asp:TextBox ID="TextBox11" runat="server" CssClass="label" Width="114px"></asp:TextBox></td>
             </tr>
                  <tr>
                      <td align="center" class="td2" style="width: 10%; height: 21px">
                          Month：</td>
                      <td class="td2" colspan="3" style="height: 21px">
                          <asp:DropDownList ID="DropDownList4" runat="server">
                              <asp:ListItem>1</asp:ListItem>
                              <asp:ListItem>2</asp:ListItem>
                              <asp:ListItem>3</asp:ListItem>
                              <asp:ListItem>4</asp:ListItem>
                              <asp:ListItem>5</asp:ListItem>
                              <asp:ListItem>6</asp:ListItem>
                              <asp:ListItem Value="7"></asp:ListItem>
                              <asp:ListItem>8</asp:ListItem>
                              <asp:ListItem>9</asp:ListItem>
                              <asp:ListItem>10</asp:ListItem>
                              <asp:ListItem>11</asp:ListItem>
                              <asp:ListItem>12</asp:ListItem>
                          </asp:DropDownList></td>
                  </tr>
            
             <tr>
                 <td align="center" class="td2" style="width: 10%; height: 53px">
                     remarks：</td>
                 <td class="td2" colspan="3" style="height: 53px">
                     <asp:TextBox ID="TextBox6" runat="server" CssClass="label" Height="56px" TextMode="MultiLine"
                         Width="698px"></asp:TextBox></td>
             </tr>
             </table>
          </TD></TR>
          <tr>
              <td align="center" style="height: 2px">
                  <asp:Button ID="btn_Submit" runat="server" CssClass="button60" OnClick="btn_Submit_Click"
                      Text="Add" /></td>
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
