using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class User_DonateNeeds : System.Web.UI.Page
{
    Data_Manipulation dm = new Data_Manipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            Bind();

            string str2 = "delete from Donate_Item_DB where id=''";
            int r2 = dm.For_Execute(str2);
            string str1 = "select Cid from Camp_Need_TB where id='" + Request.QueryString["Nid"] + "'";
            DataSet ds1 = dm.For_Adapter(str1);
           // string str = "select * from Add_Collection_Center_DB where Cid='"+ds1.Tables[0].Rows[0][0].ToString()+"'";
             
            DataSet ds = dm.For_Adapter("select * from Add_Collection_Center_DB ");
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlselectcenter.DataSource = ds.Tables[0];
                ddlselectcenter.DataTextField = "collectioncentername";
                ddlselectcenter.DataValueField = "id";
                ddlselectcenter.DataBind();
            }
            ddlselectcenter.Items.Insert(0, "---select---");
        }
    }
        public void Bind()
    {
        
        DataSet da = dm.For_Adapter("select * from Donate_Item_DB where DID='' ");
        if (da.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = da.Tables[0];
            GridView1.DataBind();
            GridView1.Visible = true;
        }
        else
        {
            GridView1.Visible = false;
        }
    }
    
    protected void butadd_Click(object sender, EventArgs e)
    {
        string id = dm.Gen_Id("select max(id) from Donate_Item_DB", "DID");
        
        int r = dm.For_Execute("insert into Donate_Item_DB values('" + id + "','" + txtiteam.Text + "','" + txtdescription.Text +  "','')");
        Bind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Bind();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Volunters/Add_Collection_Center.aspx");
    }
    protected void ddlselectcenter_SelectedIndexChanged(object sender, EventArgs e)
    {
         string str = "select * from Add_Collection_Center_DB where id='" + ddlselectcenter.SelectedValue + "'";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            lblnearby.Text = ds.Tables[0].Rows[0][3].ToString();
            lbladdress.Text = ds.Tables[0].Rows[0][2].ToString();
            lblcontact.Text = ds.Tables[0].Rows[0][5].ToString();

            Panel1.Visible = true;
        }
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        string str = "delete from Donate_Item_DB where id='" + GridView1.SelectedRow.Cells[0].Text + "'";

        int r = dm.For_Execute(str);
        if (r > 0)
        {
            Bind();
        }
    }
    protected void butsubmit_Click(object sender, EventArgs e)
    {
        
       
           
        
        string id = dm.Gen_Id("select max(id) from user_donated_item_DB", "DID");
         int r = dm.For_Execute("insert into user_donated_item_DB values('"+id+"','"+Request.QueryString["Nid"]+"','"+ddlselectcenter.SelectedValue+"','"+Session["uid"].ToString()+"')");
        if (r > 0)
        {
            foreach (GridViewRow grv in GridView1.Rows)
             {
                 id = grv.Cells[0].Text;

                 string str = "update Donate_Item_DB set DID='" +Request.QueryString["Nid"]+ "' where id='" +id+ "'";
                 int r1 = dm.For_Execute(str);
             }
             Response.Write("<script>alert('Successfull')</script>");
         }


        string sql = "delete from Donate_Item_DB where DID=''";
        int rw = dm.For_Execute(sql);

    }
}