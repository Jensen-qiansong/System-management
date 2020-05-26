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
public partial class Admin_HuiFuLY : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Get_Data();
        }
    }

    private void Get_Data()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr = data.GetDataReader("select * from Topic where id=" + id);
        dr.Read();
        TextBox1.Text = dr["Topic"].ToString();
        TextBox2.Text = dr["Content"].ToString();
        TextBox3.Text = dr["Replay"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        data.RunSql("update Topic set Replay='"+TextBox3.Text+"' where id= "+id);
        Alert.AlertAndRedirect("replySuccess", "LyInfoManger.aspx");

    }
}