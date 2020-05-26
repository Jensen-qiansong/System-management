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

public partial class Login : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            lblyanzheng.Text = CreateRandomCode(4);

        }

    }
    protected string CreateRandomCode(int codeCount)
    {
        string allChar = "0,1,2,3,4,5,6,7,8,9";
        string[] allCharArray = allChar.Split(',');
        string randomCode = "";
        int temp = -1;
        Random rand = new Random();
        for (int i = 0; i < codeCount; i++)
        {
            if (temp != -1)
            {
                rand = new Random(i * temp * ((int)DateTime.Now.Ticks));
            }
            int t = rand.Next(10);
            if (temp == t)
            {
                return CreateRandomCode(codeCount);
            }
            temp = t;
            randomCode += allCharArray[t];
        }
        return randomCode;
    }
    protected void ibut_Login_Click(object sender, ImageClickEventArgs e)
    {
        if (lblyanzheng.Text != txtyan.Text)
        {
            Label1.Text = "The verification code is incorrect！";
            return;
        }
        else
        {
            Label1.Text = "";
            if (DropDownList1.SelectedValue == "Manager")
            {
                if (TxtUserName.Value == "" && TxtPassword.Value == "")
                {
                    Alert.AlertAndRedirect("no Account or Password！", "Login.aspx");


                }
                else
                {
                    SqlDataReader dr;
                    dr = data.GetDataReader("select * from  Admin where Name='" + TxtUserName.Value.Trim() + "'and pwd='" + TxtPassword.Value.Trim() + "'");
                    if (dr.Read())
                    {
                        Session["UserName"] = dr["Name"].ToString();
                        Session["UserId"] = dr["id"].ToString();
                        Response.Redirect("Admin/index.html");
                    }
                    else
                    {
                        Alert.AlertAndRedirect("Account or Password wrong！", "Login.aspx");
                    }
                }

            }
            if (DropDownList1.SelectedValue == "Student")
            {
                if (TxtUserName.Value == "" && TxtPassword.Value == "")
                {
                    Alert.AlertAndRedirect("no Account and Password！", "Login.aspx");
                }
                else
                {
                    SqlDataReader dr;
                    dr = data.GetDataReader("select * from  Student where UserNubmer='" + TxtUserName.Value.Trim() + "'and UserPwd='" + TxtPassword.Value.Trim() + "'");
                    if (dr.Read())
                    {
                        Session["UserTrueName"] = dr["UserTrueName"].ToString();

                        Session["UserNubmer"] = dr["UserNubmer"].ToString();
                        Session["UserId"] = dr["id"].ToString();
                        Session["LouHao"] = dr["LouHao"].ToString();
                        Session["SuShe"] = dr["SuShe"].ToString();
                        Response.Redirect("StudentManger/index.html");
                    }
                    else
                    {
                        Alert.AlertAndRedirect("Account or Password wrong！", "Login.aspx");
                    }
                }

            }

        }


    }
}

