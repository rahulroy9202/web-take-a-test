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
    public partial class QuestionPaper : System.Web.UI.Page
    {

        int i;
        int Total_no_of_Q;
        int selected_answer;
        Question currentQ = new Question();

        Question[] questionBank;
        ListItem options = new ListItem();

        protected void Page_Load(object sender, EventArgs e)
        {
            build_questions();
            display_Question(currentQ);
        }

        public void build_questions()
        {

            i = 0;
            SqlConnection con_question = new SqlConnection("Data Source=RAHULROY-DESKPC\\RAHULROYDESKTOP;Initial Catalog=EvaluateYourSelf;Integrated Security=True");
            con_question.Open();
            SqlCommand cmdx = new SqlCommand("select count(*) from questions_DB", con_question);
            Total_no_of_Q = Convert.ToInt32(cmdx.ExecuteScalar());
            questionBank = new Question[Total_no_of_Q];
            SqlCommand cmd = new SqlCommand("Select * from questions_DB", con_question);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {


                questionBank[i] = new Question(false,
                (++i),
                Convert.ToInt32(dr[0]),
                Convert.ToInt32(dr[1]),
                Convert.ToString(dr[2]),
                Convert.ToString(dr[3]),
                Convert.ToString(dr[4]),
                Convert.ToString(dr[5]),
                Convert.ToString(dr[6]));

            }
            dr.Close();
            con_question.Close();
            i = 0;
            currentQ = questionBank[0];

        }

        


        public void display_Question(Question Q)
        {

            Q.AnswerChanged = false;
            //this.Label1.Text = Convert.ToString(Q.DispQues_No);
            this.Label1.Text = Convert.ToString(Q.question);
            //this.RadioButtonList1.Text = Convert.ToString(Q.optns[0]);
            //this.RadioButtonList1.Items.Add(
            //this.radioButton2.Text = Convert.ToString(Q.optns[1]);
            //this.radioButton3.Text = Convert.ToString(Q.optns[2]);
            //this.radioButton4.Text = Convert.ToString(Q.optns[3]);

        }










    }
}