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

public partial class Student_AddLY : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


        }
    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {

        data.RunSql("insert into  Topic(Topic,AddUser,Content,AddUserNum,LouHao,SuShe)values('" + TextBox1.Text + "','" + Session["UserTrueName"].ToString() + "','" + TextBox2.Text + "','" + Session["UserNubmer"].ToString() + "','" + Session["LouHao"].ToString() + "','" + Session["SuShe"].ToString() + "')");
            Alert.AlertAndRedirect("AddSuccess", "AddLY.aspx");
       
    }
}
