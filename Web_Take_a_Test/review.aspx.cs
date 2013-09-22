using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;


namespace Web_Take_a_Test
{
    public partial class review : System.Web.UI.Page
    {
        Question[] questionBank;

        protected void Page_Load(object sender, EventArgs e)
        {            
            Label[] myLable = new Label[10];
            build_questions();
            
            string build;
            int pos;
            for (int i = 0; i < 10; i++)
            {
                build = "shit";
                //build =(i+1).ToString() +".  " +questionBank[i].question  ;
                //if (Session[(i+1).ToString()] != null)
                    //string.Concat(build, "\t\tYour Answer:" + Session[(i + 1).ToString()]);
                //else
                    //string.Concat(build, "\t\t<Not Yet Answered>");

                pos=130+i*30;
                placeholder.Controls.Add(myLable[i]);
                myLable[i].Style[HtmlTextWriterStyle.Position] = "Absolute";
                myLable[i].Style[HtmlTextWriterStyle.Top] = pos.ToString();
                
                myLable[i].Text =build;
               
                
            }



        }

        public void build_questions()
        {
            int c = 0;

            SqlConnection con_question = new SqlConnection("Data Source=RAHULROY-DESKPC\\RAHULROYDESKTOP;Initial Catalog=EvaluateYourSelf;Integrated Security=True");
            con_question.Open();
            SqlCommand cmdx = new SqlCommand("select * from questions_DB", con_question);
            questionBank = new Question[10];
            SqlDataReader dr = cmdx.ExecuteReader();
            
            while (dr.Read())
            {
                questionBank[c] = new Question(
                    false,
                    (c+1),
                    Convert.ToInt32(dr[0]),
                    Convert.ToInt32(dr[1]),
                    Convert.ToString(dr[2]),
                    Convert.ToString(dr[3]),
                    Convert.ToString(dr[4]),
                    Convert.ToString(dr[5]),
                    Convert.ToString(dr[6])
                    );
                if (Session[(c + 1).ToString()]!=null)
                    questionBank[c].selected_answer_No = (int)Session[(c + 1).ToString()];
                
                c++;

            }
            dr.Close();
            con_question.Close();

        }
    }
}