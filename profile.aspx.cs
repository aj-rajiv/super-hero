using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text =(string) Session["user"];
        //prevent backbutton problem when logged out
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/home.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("delete from users where name='" + Label1.Text+ "'", con);
       
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        cmd.Parameters.AddWithValue("@name", Label1.Text);

        con.Open();
        DataSet sd = new DataSet();
        ad.Fill(sd);
        con.Close();
        Response.Write("<script>alert('thank you');</script>");
        Response.Redirect("~/home.aspx");

      



    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into status(name,status)values(@name,@status)", con);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        cmd.Parameters.AddWithValue("@name", Label1.Text);
        cmd.Parameters.AddWithValue("@status", TextBox1.Text);
        con.Open();
        DataSet sd = new DataSet();
        ad.Fill(sd);
        con.Close();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from requests", con);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update users set password='"+TextBox4.Text+"' where password='"+TextBox2.Text+"'",con);

        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        cmd.Parameters.AddWithValue("@password", TextBox4.Text);

        con.Open();
        DataSet sd = new DataSet();
        ad.Fill(sd);
        con.Close();
        Response.Write("<script>alert('your password has been changed successfully');</script>");
       
    }
}