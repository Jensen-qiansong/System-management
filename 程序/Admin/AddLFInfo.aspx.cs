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
public partial class Admin_AddLFInfo : System.Web.UI.Page
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
            DropDownList1.Items.Add("Please selectdormitory building");
            DropDownList1.Items[this.DropDownList1.Items.Count - 1].Value = " ";
            DropDownList1.SelectedIndex = this.DropDownList1.Items.Count - 1;
        }
    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {

        data.RunSql("insert into  LFInfo(LouHaoId,LouHao,SuSheId,SuShe,LouCeng,StName,StNum,LFName,Ds,ShiJian,LiKaiShiJIan)values('" + DropDownList1.SelectedValue + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedValue + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox1.Text + "','" + TextBox11.Text + "','" + this.TextBox2.Text + "','" + this.TextBox3.Text + "','" + TextBox6.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')");
        Alert.AlertAndRedirect("AddSuccess", "AddLFInfo.aspx");

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.DataSource = data.GetDataReader("select * from  HostelInfo where Bid='" + DropDownList1.SelectedValue + "'");
        DropDownList2.DataTextField = "Num";
        DropDownList2.DataValueField = "id";
        DropDownList2.DataBind();
        DropDownList2.Items.Add("Please selectdormitory");
        DropDownList2.Items[this.DropDownList2.Items.Count - 1].Value = " ";
        DropDownList2.SelectedIndex = this.DropDownList2.Items.Count - 1;
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataReader dr = data.GetDataReader("select * from HostelInfo where id=" + DropDownList2.SelectedValue);
        dr.Read();
        TextBox7.Text = dr["RenShu"].ToString();
        TextBox8.Text = dr["Kong"].ToString();
        TextBox9.Text = dr["InNum"].ToString();
        TextBox1.Text = dr["Floor"].ToString();
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        SqlDataReader dr = data.GetDataReader("select * from Student where  UserNubmer='" + TextBox2.Text + "'");
        if (dr.Read())
        {


            TextBox11.Text = dr["UserTrueName"].ToString();
        }
        else
        {
            Label1.Text = "Student information不存在请重新输入";
        }
    }
}
