using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Volunters_Add_Camp_Needs : System.Web.UI.Page
{
    Data_Manipulation dm = new Data_Manipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            string str = "delete from Add_Iteam_DB where Nid=''";
            int r = dm.For_Execute(str);

            DataSet ds = dm.For_Adapter("select * from addcampdetailsDB");
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlselectcamp.DataSource = ds.Tables[0];
                ddlselectcamp.DataTextField = "campname";
                ddlselectcamp.DataValueField = "id";
                ddlselectcamp.DataBind();
            }
            itembind();
        }
    }
    public void itembind()
    {
        // DataSet da = dm.For_Adapter("select Add_Iteam_DB.* from Add_Iteam_DB inner join addcampdetailsDB on Add_Iteam_DB.Nid=addcampdetailsDB.id where addcampdetailsDB.Volunteerid='"+Session["id"].ToString()+"'");
        DataSet da = dm.For_Adapter("select * from Add_Iteam_DB where Nid=''");         
        if (da.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = da.Tables[0];
                GridView1.DataBind();
            }
    }

    protected void butadd_Click(object sender, EventArgs e)
    {
        string id = dm.Gen_Id("select max(id) from Add_Iteam_DB", "ITD");
        int r = dm.For_Execute("insert into Add_Iteam_DB values('"+id+"','','" + txtiteam.Text + "','" + txtquantity.Text + "')");
        if (r > 0)
        {
            
        }
        itembind();
    }


    protected void ddlselectcamp_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = "select * from addcampdetailsDB where id='" + ddlselectcamp.SelectedValue + "'";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            lbllocation.Text = ds.Tables[0].Rows[0][2].ToString();
            lbladdress.Text = ds.Tables[0].Rows[0][3].ToString();

            Panel1.Visible = true;

        }
    }
    protected void butsubmit_Click(object sender, EventArgs e)
    {
        string nid = dm.Gen_Id("select max(id) from Camp_Need_TB", "NID");
       
        int r = dm.For_Execute("Insert into Camp_Need_TB values('" +nid+ "','"+ddlselectcamp.SelectedValue+"','"+ txtmale.Text + "','" + txtfemale.Text + "','" + txtothers.Text + "','" + txttotalmember.Text + "','"+Session["id"].ToString()+"')");
        if (r > 0)
        {
            foreach (GridViewRow grv in GridView1.Rows)
            {
                string id = grv.Cells[0].Text;

                string str = "update Add_iteam_DB set Nid='" + nid + "' where id='" + id + "'";
                int r1 = dm.For_Execute(str);
            }
            Response.Write("<script>alert('Successfull')</script>");
        }

    }
    protected void txtfemale_TextChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = "delete from Add_Iteam_DB  where id='"+GridView1.SelectedRow.Cells[0].Text+"'";

        int r = dm.For_Execute(str);
        if (r > 0)
        {
            itembind();
        }
    }
}

