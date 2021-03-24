using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
public partial class Login : System.Web.UI.Page
{
    OdbcCommand cmd;
    OdbcConnection cnt;
    int c;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void blogin_Click(object sender, EventArgs e)
    {
        int f=0;
        int counter=0;
       
        try
        {
            cnt = new OdbcConnection("dsn=eventdsn;uid=event;pwd=event");
            cnt.Open();
            cmd = new OdbcCommand("select * from login", cnt);
            OdbcDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (dr.GetString(0) == tlogin.Text)
                {
                    if (dr.GetString(1) == tlogpwd.Text)
                    {
                        c = dr.GetInt16(2);
                        f = 1;
                        break;
                    }
                }
            }
            if (f == 1)
            {
                if (c==0)
                {
                    Response.Write("Please Reregister");
                }
                else
                {
                   // Response.Write("Successfull Login");
                   // Response.Write("~/MyMenu.aspx");
                    counter = dr.GetInt16(2) - 1;
                    OdbcCommand cmd1 = new OdbcCommand("update login set COUNTER='" + counter + "' where  LOGID='" + tlogin.Text + "' and logpwd='" + tlogpwd.Text + "'", cnt);
                    cmd1.ExecuteNonQuery();
                    Response.Write("<script> window.open('MyMenu.aspx','_blank') </script>");
                   
                }
              
            }
            else
                Response.Write("Invalid Id or password");
        }
        catch (Exception exp)
        {
           Response.Write(exp.ToString());
        }
    }
}