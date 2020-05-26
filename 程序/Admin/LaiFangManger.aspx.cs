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
using System.IO;
public partial class Admin_LaiFangManger : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    Alert js = new Alert();
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

            Get_Data();

        }
    }
    protected void GvData_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlHelper mydata = new SqlHelper();

        string ID = GvData.DataKeys[e.RowIndex].Values[0].ToString();
        try
        {
            mydata.RunSql("delete  from   LFInfo  where  id='" + ID + "'");
            Label4.Text = "DeleteSuccess！";
            GvData.EditIndex = -1;
            Get_Data();
        }
        catch
        {

            Label4.Text = "操作fail！";
        }

    }
    private void Get_Data()
    {
        try
        {


            GvData.DataSource = GetCodeBy(0);
            GvData.DataBind();
        }
        catch
        {

        }

    }
    protected void GvData_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GvData.PageIndex = e.NewPageIndex;
        Get_Data();
    }
    protected void GvData_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //鼠标移动变色
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //当鼠标放上去的时候 先保存当前行的背景颜色 并给附一颜色 
            e.Row.Attributes.Add("onmouseover", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f6f6f6',this.style.fontWeight='';");
            //当鼠标Leave的时候 将背景颜色还原的以前的颜色 
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=currentcolor,this.style.fontWeight='';");
        }
        //单击行改变行背景颜色 
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onclick", "this.style.backgroundColor='#f6f6f6'; this.style.color='buttontext';this.style.cursor='default';");
        }

    }
    public DataSet GetCodeBy(int iCount)
    {
        SqlHelper date = new SqlHelper();
        string strTop = "";
        string sql = "";
        if (iCount > 1)
        {
            strTop = "top " + iCount.ToString();
        }
        if (DropDownList1.SelectedItem.Text == "Please selectdormitory building")
        {
            sql = "select  " + strTop + "  * from [LFInfo]  ";

        }
        else
        {
            sql = "select  " + strTop + "  * from [LFInfo] where SuSheId='" + DropDownList2.SelectedValue + "' ";

        }

        SqlConnection con = new SqlConnection(SqlHelper.connstring);
        SqlCommand cmd = new SqlCommand(sql, con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = null;
        try
        {
            con.Open();
            ds = new DataSet();
            da.Fill(ds);

        }
        catch (SqlException ex)
        {
            throw ex;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }
        return ds;
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
        Get_Data();

    }
   
}
