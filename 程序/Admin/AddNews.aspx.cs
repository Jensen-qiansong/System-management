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

public partial class Admin_AddNews : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {

        string sql = "insert into News(title,contents)values('" + TextBox1.Text.Trim() + "','" + content1.Value + "')";
        data.RunSql(sql);

        Alert.AlertAndRedirect("AddSuccess", "AddNews.aspx");
    }

}
