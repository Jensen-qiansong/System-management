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
using System;
public partial class Admin_AddFloorInfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {

        data.RunSql("insert into  FloorInfo(Name,manager,Ds)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + this.TextBox3.Text + "')");
        Alert.AlertAndRedirect("AddSuccess", "FloorInfoManger.aspx");
    }
}
