using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_Take_a_Test
{
    class user
    {
        public bool is_admin;
        public string User_ID;
        public int quesNo=0;
    }

    public class Question
    {
        public bool AnswerChanged;
        public int DispQues_No;
        public int DBquestion_No;
        public int rightAnswer_No, selected_answer_No;
        public string question;
        public bool Is_Bookmarked = false;
        public string[] optns = new string[4];

        //public int selected_Answer { get; set; }


        public Question()
        { }

        public Question(bool b, int n, int i, int j, string x, string x1, string x2, string x3, string x4)
        {
            AnswerChanged = b;
            DispQues_No = n;
            DBquestion_No = i;
            rightAnswer_No = j;
            question = x;
            optns[0] = x1;
            optns[1] = x2;
            optns[2] = x3;
            optns[3] = x4;

        }

        public bool Check_if_Right()
        {
            if (selected_answer_No == rightAnswer_No)
                return true;
            else
                return false;
        }

    }


}