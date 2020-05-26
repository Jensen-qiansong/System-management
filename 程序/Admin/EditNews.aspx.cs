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
public partial class Admin_EditNews : System.Web.UI.Page
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
        SqlDataReader dr = data.GetDataReader("select * from News where id=" + id);
        dr.Read();
        TextBox1.Text = dr["title"].ToString();
        content1.Value = dr["contents"].ToString();

    }

    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        data.RunSql("update News set title='" + TextBox1.Text + "',contents='" + content1.Value + "'  where id=" + id);
        Alert.AlertAndRedirect("UpdateSuccess！", "NewsManager.aspx");

    }

}