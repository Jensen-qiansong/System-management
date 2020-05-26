<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LyInfoManger.aspx.cs" Inherits="Admin_LyInfoManger" %>

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
              Current Location： Observations and recommendations
          </TD></TR>
        <TR>
          <TD height=2 align="center">
              &nbsp;<asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
              </TD></TR>
          <tr>
              <td align="left" height="2">
                  <asp:GridView ID="GvData" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                      CellPadding="4" DataKeyNames="id" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GvData_PageIndexChanging"
                      OnRowDataBound="GvData_RowDataBound" OnRowDeleting="GvData_RowDeleting" PageSize="12"
                      Width="100%">
                      <PagerSettings FirstPageText="home page" LastPageText="Tail page" NextPageText="next page" PageButtonCount="12"
                          PreviousPageText="previous page" />
                     <RowStyle BackColor="#DEDFDE" HorizontalAlign="Left" ForeColor="Black" />
                      <Columns>
                            <asp:TemplateField HeaderText="MessageTitle">
                                <ItemTemplate>
                                    <asp:Label ID="Topic" runat="server" Text='<%# Bind("Topic") %>' Width="208px"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="100px" />
                            </asp:TemplateField>
                              <asp:TemplateField HeaderText="message人name">
                                <ItemTemplate>
                                    <asp:Label ID="AddUser" runat="server" Text='<%# Bind("AddUser") %>' Width="80px"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="30px" />
                            </asp:TemplateField>
                              <asp:TemplateField HeaderText="dormitory building">
                                <ItemTemplate>
                                    <asp:Label ID="LouHao" runat="server" Text='<%# Bind("LouHao") %>' Width="80px"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="30px" />
                            </asp:TemplateField>
                              <asp:TemplateField HeaderText="dormitory">
                                <ItemTemplate>
                                    <asp:Label ID="SuShe" runat="server" Text='<%# Bind("SuShe") %>' Width="80px"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="30px" />
                            </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Release Time">
                                <ItemTemplate>
                                    <asp:Label ID="Addtime" runat="server" Text='<%# Bind("Addtime","{0:d}") %>' Width="130px"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="30px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="replymessage">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "HuiFuLY.aspx?id="+Eval("id") %>'
                                        Text="replymessage" Width="93px"></asp:HyperLink>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
                                        OnClientClick="return confirm('are you sureDelete吗？')" Text="Delete" Width="31px"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                      <PagerTemplate>
                          <table border="0" width="100%">
                              <tr>
                                  <td>
                                      <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                          Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">home page </asp:LinkButton>
                                      <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                          CommandName="Page" Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">previous page </asp:LinkButton>
                                      <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                          Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">next page </asp:LinkButton>
                                      <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                          Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">Tail page </asp:LinkButton>
                                      common
                                      <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>page
                                      the
                                      <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>page
                                  </td>
                                  <td align="right" width="20%">
                                  </td>
                              </tr>
                          </table>
                      </PagerTemplate>
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                     <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                      <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                      <EditRowStyle BackColor="#2461BF" />
                      <AlternatingRowStyle BackColor="White" />
                  </asp:GridView>
              </td>
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
