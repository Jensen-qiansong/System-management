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
public partial class Admin_EditFloorInfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            SqlHelper data = new SqlHelper();
            int id = int.Parse(Request.QueryString["id"].ToString());
            SqlDataReader dr = data.GetDataReader("select * from FloorInfo where id=" + id);
            dr.Read();
            TextBox1.Text = dr["Name"].ToString();
            TextBox2.Text = dr["manager"].ToString();
            TextBox3.Text = dr["Ds"].ToString();
        }
    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlHelper update = new SqlHelper();

        update.RunSql("update  FloorInfo set Name='" + TextBox1.Text + "',manager='" + TextBox2.Text + "',Ds='" + TextBox3.Text + "'  where id=" + id);

        Alert.AlertAndRedirect("UpdateSuccess", "FloorInfoManger.aspx");
    }
}
