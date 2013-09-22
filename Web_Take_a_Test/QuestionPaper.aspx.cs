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
        int count;
        int selected_answer;
        Question currentQ = new Question();
        RadioButton rb_selected;
        Question[] questionBank;
        ListItem options = new ListItem();
        RadioButton[] RB_optns_array;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["count"] == null)
            {
                PreviousB.Enabled = false;
                Session["count"] = 1;
            }
            count = (int)Session["count"];

            if (Session[count.ToString()]!=null)
            selected_answer = (int)Session[count.ToString()];           

            check_buttons();
            build_questions();
            display_Question(currentQ);
            RB_optns_array = new RadioButton[4];
            RB_optns_array[0] = RadioButton1;
            RB_optns_array[1] = RadioButton2;
            RB_optns_array[2] = RadioButton3;
            RB_optns_array[3] = RadioButton4;
            Button1.Text = count.ToString() + "x" +currentQ.DBquestion_No.ToString() +selected_answer;
            user usr = new user();
            check_RB_consistancy();
        }

        public void build_questions()
        {
            SqlConnection con_question = new SqlConnection("Data Source=RAHULROY-DESKPC\\RAHULROYDESKTOP;Initial Catalog=EvaluateYourSelf;Integrated Security=True");
            con_question.Open();
            SqlCommand cmdx = new SqlCommand("select * from questions_DB where question_No = "+count, con_question);
            questionBank = new Question[1];
            SqlDataReader dr = cmdx.ExecuteReader();
            while (dr.Read())
            {
                questionBank[0] = new Question(false,
                (count),
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
            currentQ = questionBank[0];

        }

        public void display_Question(Question Q)
        {
            Q.AnswerChanged = false;            
            this.ques_no.Text = Convert.ToString(Q.DispQues_No) + " .";
            this.Label1_question.Text = Convert.ToString(Q.question);
            this.RadioButton1.Text = Convert.ToString(Q.optns[0]);
            this.RadioButton2.Text = Convert.ToString(Q.optns[1]);
            this.RadioButton3.Text = Convert.ToString(Q.optns[2]);
            this.RadioButton4.Text = Convert.ToString(Q.optns[3]);

        }


        private void set_radio_button()
        {
            if (currentQ.selected_answer_No == 1)
                RadioButton1.Checked = true;
            else
                RadioButton1.Checked = false;

            if (currentQ.selected_answer_No == 2)
                RadioButton2.Checked = true;
            else
                RadioButton2.Checked = false;

            if (currentQ.selected_answer_No == 3)
                RadioButton3.Checked = true;
            else
                RadioButton3.Checked = false;

            if (currentQ.selected_answer_No == 4)
                RadioButton4.Checked = true;
            else
                RadioButton4.Checked = false;
            currentQ.AnswerChanged = false;
        }


        private void commit_answer()
        {
            if (currentQ.AnswerChanged)
            {


                //currentQ.selected_answer_No = selected_answer;
                selected_answer = 0;
                currentQ.AnswerChanged = false;

            }

        }


        private void check_buttons()
        {
            if (count >= 2 & count <= 10)
            {
                PreviousB.Enabled = true;
            }
            else
                PreviousB.Enabled = false;

            if (count >= 1 & count <= 9)
            {
                NextB.Enabled = true;
            }
            else
                NextB.Enabled = false;
            
            Button1.Text = count.ToString() + "x" + currentQ.DBquestion_No.ToString();
        }

        protected void PreviousB_Click(object sender, EventArgs e)
        {
            Session["count"] = --count;
            Response.Redirect("QuestionPaper.aspx");
            
        }

        protected void NextB_Click(object sender, EventArgs e)
        {
            Session["count"] = ++count;
            Response.Redirect("QuestionPaper.aspx");
        }

        protected void SummaryB_Click(object sender, EventArgs e)
        {

        }

        protected void FinishB_Click(object sender, EventArgs e)
        {

        }

        protected void radioButton_CheckedChanged(object sender, EventArgs e)
        {
            rb_selected = (RadioButton)sender;
            selected_answer = rb_selected.TabIndex;
            
            Session[count.ToString()] = selected_answer;

            //rb_selected.Text = "selected_answer";
            if(RadioButton1.TabIndex==(short)selected_answer)            
            currentQ.AnswerChanged = true;
            
            check_RB_consistancy();            
        }

        private void check_RB_consistancy()
        {
            for (int i = 0; i < 4; i++)
            {
                if (selected_answer - 1==i)
                {
                    RB_optns_array[i].Checked = true;
                    continue;
                }
                RB_optns_array[i].Checked = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            check_RB_consistancy();
            
        }


    }
}