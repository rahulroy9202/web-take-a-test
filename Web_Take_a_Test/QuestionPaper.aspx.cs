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
        //string evaluate_radio_button;
        RadioButton rb_selected;
        Question[] questionBank;
        ListItem options = new ListItem();

        protected void Page_Load(object sender, EventArgs e)
        {
            build_questions();
            display_Question(currentQ);
           // PreviousB.Enabled = false;
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

                currentQ.selected_answer_No = selected_answer;
                selected_answer = 0;
                currentQ.AnswerChanged = false;

            }

        }



        private void check_buttons()
        {/*
            if (currentQ.DispQues_No >= 2 & currentQ.DispQues_No <= 10)
            {
                PreviousB.Enabled = true;
            }
            else
                NextB.Enabled = false;

            if (currentQ.DispQues_No >= 1 & currentQ.DispQues_No <= 9)
            {
                PreviousB.Enabled = true;
            }
            else
                NextB.Enabled = false;
            */

        }

        protected void PreviousB_Click(object sender, EventArgs e)
        {
            commit_answer();
            check_buttons();
            if (currentQ.DispQues_No != 1)
            {
                currentQ = questionBank[(currentQ.DispQues_No - 2)];
                this.display_Question(currentQ);
                set_radio_button();
                currentQ.AnswerChanged = false;
                check_buttons();
            }

        }

        protected void NextB_Click(object sender, EventArgs e)
        {
            commit_answer();


            currentQ = questionBank[currentQ.DispQues_No];
            this.display_Question(currentQ);
            set_radio_button();
            check_buttons();

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
            
            rb_selected.Text = "selected_answer";
            

            
            currentQ.AnswerChanged = true;
            
            
        }


    }
}