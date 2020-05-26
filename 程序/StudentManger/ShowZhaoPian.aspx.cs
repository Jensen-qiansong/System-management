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
public partial class Admin_ShowZhaoPian : System.Web.UI.Page
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
        SqlDataReader dr = data.GetDataReader("select * from WeiShengInfo where id=" + id);
        dr.Read();
        Image1.ImageUrl = "../userfiles/" + dr["zhaopian"].ToString();
       

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        Response.Redirect("MyWeiShengInfoList.aspx");
    }
}
