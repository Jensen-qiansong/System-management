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
public partial class Admin_EditStudent : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            SqlDataReader dr = data.GetDataReader("select * from Student where  id=" + Request.QueryString["id"].ToString());
            if (dr.Read())
            {
                txtUserName.Text = dr["UserName"].ToString();
                txtEmal.Text = dr["Emal"].ToString();
                txtUserPwd.Text = dr["UserPwd"].ToString();
                txtNumber.Text = dr["UserNubmer"].ToString();
                TxtXiName.Text = dr["XiName"].ToString();
                TxtUserTrueName.Text = dr["UserTrueName"].ToString();
                TxtUserDs.Text = dr["UserDs"].ToString();
                XueYuanName.Text = dr["XueYuanName"].ToString();
                BanJiName.Text = dr["BanJiName"].ToString();
                pic.Text = dr["Photo"].ToString();
                Image2.ImageUrl = "../userfiles/" + dr["Photo"].ToString();
            }
        }
    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        string sql = "update Student set Emal='" + txtEmal.Text + "',UserName='" + txtUserName.Text + "',UserPwd='" + txtUserPwd.Text + "',UserNubmer='" + txtNumber.Text + "',XiName='" + TxtXiName.Text + "',UserTrueName='" + TxtUserTrueName.Text + "',UserDs='" + TxtUserDs.Text + "',XueYuanName='" + XueYuanName.Text + "',BanJiName='" + BanJiName.Text + "',Photo='"+pic.Text+"' where id=" + Request.QueryString["id"].ToString();
        data.RunSql(sql);

        Alert.AlertAndRedirect("UpdateinformationSuccess", "StudentManger.aspx");
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
