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
public partial class Admin_AddHostelInfo : System.Web.UI.Page
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
        }
    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {

        data.RunSql("insert into  HostelInfo(Bid,BName,Num,Floor,Sex,Ds,RenShu,FeiYong,Kong)values('" + DropDownList1.SelectedValue + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList2.SelectedValue + "','" + this.TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox4.Text+ "')");
        Alert.AlertAndRedirect("AddSuccess", "AddHostelInfo.aspx");
    }
}
