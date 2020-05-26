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
public partial class Student_AddyeguiInfo : System.Web.UI.Page
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
        SqlDataReader dr = data.GetDataReader("select * from Student where  UserNubmer='" + Session["UserNubmer"].ToString() + "'");
        if (dr.Read())
        {

            string LouHaoId = dr["LouHaoId"].ToString();

            string LouHao = dr["LouHao"].ToString();
            string SuSheId = dr["SuSheId"].ToString();
            string SuShe = dr["SuShe"].ToString();
            data.RunSql("insert into  WeiXiuInfo(LouHaoId,LouHao,SuSheId,SuShe,YuanYIn,StName,StNum)values('" + LouHaoId + "','" + LouHao + "','" + SuSheId + "','" + SuShe + "','" + this.TextBox6.Text + "','" + Session["UserTrueName"].ToString() + "','" + Session["UserNubmer"].ToString() + "')");
            Alert.AlertAndRedirect("AddSuccess", "AddWXInfo.aspx");
        }
        else
        {
            Alert.AlertAndRedirect("Fail", "AddWXInfo.aspx");
 
        }

      

    } 
}
