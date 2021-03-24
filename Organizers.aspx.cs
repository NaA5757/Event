using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
public partial class Organizers : System.Web.UI.Page
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
            cnt = new OdbcConnection("dsn=eventdsn; uid=event;pwd=event");
            cnt.Open();
            cmd = new OdbcCommand("insert into organizers values('" + torg_id.Text + "','" + torg_name.Text + "','" + temail.Text + "','" + tother_details.Text + "')", cnt);
            cmd.ExecuteNonQuery();
            GridView1.DataSourceID = "SqlDataSource1";
            Response.Write("<script>alert('Are you sure ?....')</script>");
        }
        catch (Exception ex)
        {
            //Response.Write(ex.ToString());
            Response.Write("<script>alert('Error in saving')</script>");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}