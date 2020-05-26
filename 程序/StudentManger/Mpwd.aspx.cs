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
public partial class Student_Mpwd : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserId"] == null)
            {
                Alert.AlertAndRedirect("Sorry, you can't operate without login", "Login.aspx");

            }

        }
    }/// <summary>
    /// UpdatePassword
    /// </summary>
    private void UPpwd()
    {
        SqlHelper mydata = new SqlHelper();
        string Username = Session["UserId"].ToString();
        try
        {
            string sql = "update [Student]  set [UserPwd] ='" + TextBox2.Text + "' where [id]='" + Username + "' ";
            mydata.RunSql(sql);



            LabelWarningMessage.Text = "UpdateSuccess！";


        }
        catch
        {

            LabelWarningMessage.Text = "Updatefail！";
        }
    }
    /// <summary>
    /// 检验原来的Password
    /// </summary>
    private void chkpwd()
    {
        SqlDataReader dr;
        dr = data.GetDataReader("select * from  Student  where id='" + Session["UserId"].ToString() + "' and UserPwd='" + TextBox1.Text + "'");
        if (dr.Read())
        {
            UPpwd();
        }
        else
        {
            LabelWarningMessage.Text = "Old Password不正确！";
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        chkpwd();
    }
}
