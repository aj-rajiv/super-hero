using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class adminprofile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = (string)Session["admin"];
        //prevent backbutton problem when logged out
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin.aspx");   
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from requests", con);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from users", con);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView2.DataSource = rd;
        GridView2.DataBind();
        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from status", con);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView3.DataSource = rd;
        GridView3.DataBind();
        con.Close();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from requests where address='"+TextBox1.Text+"'" , con);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView4.DataSource = rd;
        GridView4.DataBind();
        con.Close();
    }
}