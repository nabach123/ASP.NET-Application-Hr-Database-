using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;

namespace hrTablesDatabase
{
    public partial class Jobs : Page
    {
        private int asp;

        string ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            ConnectionString = "Data Source=XE;User ID=hr;Password=hr;Unicode=True";

            //TextBox1.Text = "";
            //TextBox2.Text = "";
            //TextBox3.Text = "";
            //TextBox1.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ConnectionString = "Data Source=XE;User ID=hr;Password=hr;Unicode=True";
            OracleConnection con = new OracleConnection(ConnectionString);
            con.Open();
            OracleCommand cmd = new OracleCommand("Insert into jobs values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "' )", con);
            cmd.ExecuteNonQuery();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";




        }
    }
}