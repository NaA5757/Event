﻿using System;
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
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bsave_Click(object sender, EventArgs e)
    {
        try
        {
            cnt = new OdbcConnection("dsn=eventdsn;uid=event;pwd=event");
            cnt.Open();
            cmd = new OdbcCommand("insert into ref_booking_status values('" + tbook_status_code.Text + "','" +tbook_status_desc.Text + "')", cnt);
            cmd.ExecuteNonQuery();
            GridView1.DataSourceID = "SqlDataSource1";
            Response.Write("<script>alert('Are you sure ?....')</script>");
        }
        catch (Exception exp)
        {
           // Response.Write(exp.ToString());
            Response.Write("<script>alert('Error in saving')</script>");

        }
    }
}