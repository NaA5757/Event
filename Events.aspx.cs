using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;

public partial class Events : System.Web.UI.Page
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
            cmd = new OdbcCommand("insert into events values('" + tevent_id.Text + "','" + te_status_code.Text + "','" + te_type_code.Text + "','" + tfree_or_com_code.Text  + "','"+ torg_id.Text + "','" + tvanue_id.Text + "','" + tevent_name.Text + "'," + tevent_start_date.Text + "," + tevent_end_date.Text + "," + tno_of_participants.Text + "," + tderived_days_duration.Text + ","+ tdiscount.Text + ","+ tamount_paid.Text + "," + tpotential_cost.Text +"," + tcalculated_cost.Text +","+ tedited_cost.Text +","+ textra_cost.Text + ",'"+ tcomments.Text +"','"+ tother_details.Text +"')", cnt);
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}