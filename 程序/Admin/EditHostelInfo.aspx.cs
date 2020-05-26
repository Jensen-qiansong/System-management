using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class Admin_EditHostelInfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            DropDownList1.DataSource = data.GetDataReader("select * from  FloorInfo");
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataBind();
            Get_Data();
        }
    }
    private void Get_Data()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr = data.GetDataReader("select * from HostelInfo where id=" + id);
        dr.Read();
        TextBox1.Text = dr["Num"].ToString();
        DropDownList1.Items.FindByText(dr["BName"].ToString()).Selected = true;
        DropDownList1.Items.FindByValue(dr["Bid"].ToString()).Selected = true;
        TextBox2.Text = dr["Floor"].ToString();
        TextBox3.Text = dr["Ds"].ToString();
        DropDownList2.Items.FindByText(dr["Sex"].ToString()).Selected = true;
        DropDownList2.Items.FindByValue(dr["Sex"].ToString()).Selected = true;
        TextBox4.Text = dr["RenShu"].ToString();
        TextBox5.Text = dr["FeiYong"].ToString();
    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        data.RunSql("update HostelInfo set Num='" + TextBox1.Text + "',BName='" + DropDownList1.SelectedItem.Text + "',Bid='" + DropDownList1.SelectedValue + "',Floor='" + TextBox2.Text + "',Ds='" + TextBox3.Text + "',Sex='" + DropDownList2.SelectedValue + "',FeiYong='" + TextBox5.Text + "'  where id=" + id);
        Alert.AlertAndRedirect("UpdateSuccess！", "HosteManger.aspx");

    }
}
