using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Net.Mail;
using System.Web.Security;
using System.Net;

public partial class home : System.Web.UI.Page
{
    
     public string password = "";
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        Calendar1.Visible = false;
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into requests(name,address,phone,email,posts)values(@name,@address,@phone,@email,@posts)", con);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@address",TextBox2.Text);
        cmd.Parameters.AddWithValue("@phone", TextBox3.Text);
        cmd.Parameters.AddWithValue("@email", TextBox4.Text);
        cmd.Parameters.AddWithValue("@posts", TextBox5.Text);
        con.Open();
        DataSet ds = new DataSet();
        ad.Fill(ds);
        con.Close();
        Response.Write("<script>alert('Registered successfully');</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox14.Text = Calendar1.SelectedDate.ToString();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox14.Text = "";
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        TextBox12.Text = "";
        TextBox13.Text = "";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cm = new SqlCommand("select count(*) from users where name='" + TextBox6.Text + "'", con);
        con.Open();
        int returnvalue = (int)cm.ExecuteScalar();
        con.Close();
        if (returnvalue > 1)
        {
            Response.Write("<script>alert('username already exists');</script>");
        }
        else
        {
         SqlCommand cmd = new SqlCommand("insert into users(name,dob,address,phone,email,password)values(@name,@dob,@address,@phone,@email,@password)", con);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
       
        cmd.Parameters.AddWithValue("@name", TextBox6.Text);
        cmd.Parameters.AddWithValue("@dob", TextBox14.Text);
        cmd.Parameters.AddWithValue("@address", TextBox7.Text);
        cmd.Parameters.AddWithValue("@phone", TextBox8.Text);
        cmd.Parameters.AddWithValue("@email", TextBox9.Text);
        cmd.Parameters.AddWithValue("@password", TextBox11.Text);
        con.Open();
        DataSet ds = new DataSet();
        ad.Fill(ds);
        con.Close();
        Response.Write("<script>alert('Registration successful');</script>");
       
        }

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["user"] = TextBox12.Text;
        SqlCommand cm = new SqlCommand("select count(*) from users where name='" + Session["user"] + "' and password='"+TextBox13.Text+"'", con);
       
        con.Open();
        int returnvalue = (int)cm.ExecuteScalar();
        con.Close();
        if (returnvalue == 1)
        {
            Response.Redirect("~/profile.aspx");
           
        }
        else
        {

            Response.Write("<script>alert('invalid user');</script>");

        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
       
        SqlCommand cmd = new SqlCommand("select password from users where name='"+TextBox16.Text+"' and email='" + TextBox15.Text + "'", con);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        {
            cmd.Parameters.AddWithValue("@name", TextBox16.Text);
            cmd.Parameters.AddWithValue("@email", TextBox15.Text);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            {
                if (rd.Read())
                {
                    password = rd["password"].ToString();
                }
            }
            con.Close();
        }
        if (!string.IsNullOrEmpty(password))
        {

            MailMessage msg = new MailMessage("sender@gmail.com", TextBox15.Text);
            msg.Subject = string.Format("Hi {0},<br/><br/>Your password is {1}.<br/><br/>Thank You.",TextBox16.Text, password);
            msg.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.EnableSsl = true;
            NetworkCredential nc = new NetworkCredential("sender@gmail.com", "senderpassword");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = nc;
            smtp.Send(msg);
           
            Response.Write("<script>alert(' Password sent to your email address');</script>");

        }
        else
        {
            Response.Write("<script>alert('invalid user');</script>");
        }
    }
}