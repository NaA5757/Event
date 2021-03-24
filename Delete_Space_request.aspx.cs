using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;

public partial class Dpace_request : System.Web.UI.Page
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
            cmd = new OdbcCommand("Delete from space_request where req_id='" + treq_id.Text + "'", cnt);
            cmd.ExecuteNonQuery();
            GridView1.DataSourceID = "SqlDataSource1";


        }
        catch (Exception exp)
        {
            //Response.Write(exp.ToString());
            Response.Write("<script>alert('Error in Deleting')</script>");
        }
    }
}