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
public partial class Student_MMInfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserId"] == null)
            {
                Alert.AlertAndRedirect("Sorry, you can't operate without login", "Login.aspx");

            }
            else
            {

                SqlDataReader dr = data.GetDataReader("select * from Student where id=" + Session["UserId"].ToString());
                if (dr.Read())
                {
                    UserName.Text = dr["UserNubmer"].ToString();
                    Email.Text = dr["Emal"].ToString();

                  
                    XiName.Text = dr["XiName"].ToString();
                    UserTrueName.Text = dr["UserTrueName"].ToString();
                    UserDs.Text = dr["UserDs"].ToString();
                    pic.Text = dr["Photo"].ToString();
                    Image2.ImageUrl = "../userfiles/" + dr["Photo"].ToString();


                    Label1.Text = dr["LouHao"].ToString();
                    Label3.Text = dr["SuShe"].ToString();

                    Label4.Text = dr["FeiYong"].ToString();
                    Label5.Text = dr["LouGuan"].ToString();

                    
                }
            }
        }
    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        string sql = "update Student set Emal='" + Email.Text + "',UserName='" + UserName.Text + "',XiName='" + XiName.Text + "',UserTrueName='" + UserTrueName.Text + "',UserDs='" + UserDs.Text + "',Photo='" + pic.Text + "' where id=" + Session["UserId"].ToString();
        data.RunSql(sql);

        Alert.AlertAndRedirect("UpdateinformationSuccess", "MMInfo.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../userfiles/");
        this.Label2.Visible = true;
        this.Label2.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image2.ImageUrl = "../userfiles/" + pic.Text;
    }
}
