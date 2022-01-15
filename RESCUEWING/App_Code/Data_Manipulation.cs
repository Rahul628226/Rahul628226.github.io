using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for Data_Manipulation
/// </summary>
public class Data_Manipulation
{
    SqlConnection con;
	public Data_Manipulation()
	{
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\disaster_management\App_Data\Disaster_ManagmentDB.mdf;Integrated Security=True;User Instance=True");
		//
		// TODO: Add constructor logic here
		//
	}
    public int For_Execute(string str)//insert, update,delete
    {
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        int r = cmd.ExecuteNonQuery();
        con.Close();
        return r;

    }
    public DataSet For_Adapter(string str)//select
    {
        SqlDataAdapter adpt = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        con.Open();
        adpt.Fill(ds);
        con.Close();
        return ds;
    }
    public string Gen_Id(string str, string frmt)
    {
        string result = "";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            if (sdr[0].ToString() == "")
            {
                result = frmt + "1000";
            }
            else
            {
                int temp = Convert.ToInt32(sdr[0].ToString().Substring(3, 4));
                temp++;
                result = frmt + temp;

            }

        }
        con.Close();
        return result;
    }
}