using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Web_Take_a_Test
{
    public partial class _Default : System.Web.UI.Page
    {
        private int flag;
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=traveller;Integrated Security=True;Pooling=False");
        SqlCommand cmd,cmd1;
        SqlDataReader read;
        protected void Page_Load(object sender, EventArgs e)
        {
           // Session["un"] = "anonymous";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //Session["un"]=

            SqlConnection con = new SqlConnection(@"Data Source=RAHULROY-DESKPC\RAHULROYDESKTOP;Initial Catalog=EvaluateYourSelf;Integrated Security=True");
                con.Open();
                try
                {

                   // Label6.Text = "ConOpen TRY";
                     

                    SqlCommand cmd = new SqlCommand("select * from logins_DB where UserName='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
                    SqlDataReader sdr = cmd.ExecuteReader();

                    //Label6.Text = "ConOpen @2";
                     
                    while(sdr.Read())
                    {
                       // Label6.Text="ConOpen";
                        Session["un"] = TextBox1.Text;
                        Response.Redirect("profile.aspx");
                    }
                }
                catch (Exception se)
                {

                   // Label6.Text = "ConOpen ERROR";
                     
                    Response.Write(se.Message);
                }
                finally
                {
                    con.Close();
                }
            }
            
        
        /*
        protected void Button2_Click(object sender, EventArgs e)
        {
            

                SqlConnection con = new SqlConnection("Data Source=ARITRO-HP\\SQL2008; Initial Catalog=participants;Integrated Security=True");
                con.Open();

                try
                {

                    if (TextBox6.Text == TextBox7.Text)
                    {
                        SqlCommand cmd = new SqlCommand("insert into students values (' "+ TextBox3.Text +" ',' "+ TextBox4.Text +" ',' "+ TextBox5.Text +" ',' "+ TextBox6.Text +" ')", con);
                        cmd.ExecuteNonQuery();
                        

                    }
                }
                catch (Exception se)
                {
                    Response.Write(se.Message);

                }
                finally
                {
                    con.Close();
                    Response.Redirect("Default.aspx");
                }
              

            con.Open();
            cmd = new SqlCommand("select * from TestDB",con);
            read = cmd.ExecuteReader();
            while (read.Read()) {
                if (read[0].ToString() == TextBox1.Text && read[1].ToString() == TextBox2.Text)
                    Response.Write("Success!");
                break;
            }
        }
        */
        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd1 = new SqlCommand("select * from TestDB", con);
            read = cmd1.ExecuteReader();
            while (read.Read())
            {
                if (read[0].ToString() == TextBox3.Text)
                {
                    TextBox3.Text = "Try different username";
                    flag = 1;
                }
                goto z;
            }
            cmd = new SqlCommand("insert into TestDB(UserId,Password) values(@uid,@pass)",con);
            cmd.Parameters.AddWithValue("@uid", TextBox3.Text);
            cmd.Parameters.AddWithValue("@pass",TextBox4.Text);
            cmd.ExecuteNonQuery();
            z: con.Close();
            if (flag == 0)
            {
                TextBox3.Text = "";
            }
            TextBox4.Text = "";
        }
    }

}

