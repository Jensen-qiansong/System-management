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
public partial class Admin_AddStudent : System.Web.UI.Page
{

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            DropDownList1.DataSource = data.GetDataReader("select * from  FloorInfo");
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataBind();
            DropDownList2.DataSource = data.GetDataReader("select * from  HostelInfo where Bid='" + DropDownList1.SelectedValue + "'");
            DropDownList2.DataTextField = "Num";
            DropDownList2.DataValueField = "id";
            DropDownList2.DataBind();
           

            SqlDataReader dr = data.GetDataReader("select * from FloorInfo where id=" + DropDownList2.SelectedValue);
            if (dr.Read())
            {
                Hidden1.Value = dr["manager"].ToString();
            }
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.DataSource = data.GetDataReader("select * from  HostelInfo where Bid='" + DropDownList1.SelectedValue + "'");
        DropDownList2.DataTextField = "Num";
        DropDownList2.DataValueField = "id";
        DropDownList2.DataBind();
  


          SqlDataReader dr = data.GetDataReader("select * from FloorInfo where id=" + DropDownList2.SelectedValue);
          if (dr.Read())
          {
              Hidden1.Value =dr["manager"].ToString();
          }
    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
          int Kong;
          SqlDataReader dr = data.GetDataReader("select * from HostelInfo where id=" + DropDownList2.SelectedValue);
        if (dr.Read())
        {
            Kong =int.Parse( dr["Kong"].ToString());

            if (Kong <= 0)
            {
                Label1.Text = "dormitory已排满请安排其他dormitory";

            }
            else
            {

                data.RunSql("insert into  Student(LouHaoId,LouHao,SuSheId,SuShe,UserNubmer,XiName,UserTrueName,UserDs,Sex,UserPwd,Emal,XueYuanName,BanJiName,Photo,LouGuan)values('" + DropDownList1.SelectedValue + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedValue + "','" + DropDownList2.SelectedItem.Text + "','" + UserName.Text + "','" + XiName.Text + "','" + UserTrueName.Text + "','" + UserDs.Text + "','" + Sex.SelectedValue + "','" + UserPwd.Text + "','" + Email.Text + "','" + XueYuanName.Text + "','" + BanJiName.Text + "','" + pic.Text + "','" + Hidden1.Value + "')");




                data.RunSql("update  HostelInfo set  InNum=InNum+1 where id=" + DropDownList2.SelectedValue);
                data.RunSql("update  HostelInfo set  Kong=Kong-1 where id=" + DropDownList2.SelectedValue);
                Alert.AlertAndRedirect("AddSuccess", "StudentManger.aspx");
            }
        }
      


    }
    protected void UserDs_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../userfiles/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image2.ImageUrl = "../userfiles/" + pic.Text;
    }
}
