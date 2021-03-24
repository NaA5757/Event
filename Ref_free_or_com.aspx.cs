using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
public partial class Ref_free_or_com : System.Web.UI.Page
{
    OdbcConnection cnt;
    OdbcCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bsave_Click(object sender, EventArgs e)
    {
        try
        {
            cnt = new OdbcConnection("dsn=eventdsn;uid=event;pwd=event");
            cnt.Open();
            cmd = new OdbcCommand("insert into ref_free_or_com values('" + tfree_or_com_code.Text + "','" + tdesc.Text + "')", cnt);
            cmd.ExecuteNonQuery();
            GridView1.DataSourceID = "SqlDataSource1";
            Response.Write("<script>alert('Are you sure ?....')</script>");
        }
        catch (Exception e1)
        {
          //  Response.Write(e1.ToString());
            Response.Write("<script>alert('Error in saving')</script>");
        }

    }
}