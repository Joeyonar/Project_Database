using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Project_Database._DAL___Project_DatabaseTableAdapters;
using System.Web.UI.WebControls;

namespace Project_Database
{
    public partial class QuestionsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string Title = SearchTitle.Text.ToString();
            string Creator = SearchCreator.Text.ToString();
            string Date = SearchDate.Text.ToString();

            

            if (DateTime.TryParse(Date, out DateTime ValidDate))
            {
                Date = ValidDate.ToString();
            }
            else
            {
                Date = DateTime.MinValue.ToString();;
            }

            QuestionsTableAdapter questionsAdapter = new QuestionsTableAdapter();
            //LVQuestions.DataSource = questionsAdapter.Get();
            LVQuestions.DataSource = questionsAdapter.GetByParameters(0, Date, Title, Creator, null);
            LVQuestions.DataBind();
        }

        protected void LVQuestions_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            Response.Redirect("~/Restricted/QuestionsList.aspx?d=" + e.CommandArgument.ToString());
        }
    }
}