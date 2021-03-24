using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;

public partial class Ref_booking_status : System.Web.UI.Page
{
    OdbcCommand cmd;
    OdbcConnection cnt;
    OdbcDataReader dr;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        //DropDownList1.Items.Clear();
        cnt = new OdbcConnection("dsn=eventdsn;uid=event;pwd=event");
        cnt.Open();
        DropDownList1.Items.Add("All");
        cmd = new OdbcCommand("select column_name from user_tab_cols where table_name ='REF_BOOKING_STATUS'", cnt);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            DropDownList1.Items.Add(dr.GetString(0));
        }

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {

        string colname = DropDownList1.SelectedValue.ToString();
        cmd = new OdbcCommand("delete from report", cnt);
        cmd.ExecuteNonQuery();
        cnt = new OdbcConnection("dsn=eventdsn;uid=event;pwd=event");
        cnt.Open();
        if (DropDownList1.SelectedIndex == 0)
        {
            SqlDataSource1.SelectCommand = "select * from  ref_booking_status";
            GridView1.DataSourceID = "SqlDataSource1";
            cmd = new OdbcCommand("insert into report(r1,r2)(select * from ref_booking_status)", cnt);
            cmd.ExecuteNonQuery();
        }
        else
        {
            SqlDataSource1.SelectCommand = "select * from ref_booking_status where" + " " + colname + "=" + "'" + TextBox1.Text + "'";
            GridView1.DataSourceID = "SqlDataSource1";
            cmd = new OdbcCommand("insert into report(r1,r2)(select * from ref_booking_status where" + " " + colname + "=" + "'" + TextBox1.Text + "')", cnt);
            cmd.ExecuteNonQuery();
        }
    }
}