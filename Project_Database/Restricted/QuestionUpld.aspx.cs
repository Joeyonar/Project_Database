using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project_Database._DAL___Project_DatabaseTableAdapters;

namespace Project_Database
{
    public partial class QuestionUpld : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PageDataRefresh();
            }
        }
        private void PageDataRefresh()
        {
            string qID = Request.QueryString["id"];
            if (qID == null || qID == "0")
            {
                qID = "0";
                FvQuestUpld.ChangeMode(FormViewMode.Insert);
            }
            int questionID = Convert.ToInt32(qID);

            QuestionsTableAdapter questionsAdapter = new QuestionsTableAdapter();
            FvQuestUpld.DataSource = questionsAdapter.GetByID(questionID);
            FvQuestUpld.DataBind();

        }
        protected void FvQuestUpld_ItemCommand(object sender, FormViewCommandEventArgs e)
        {

        }

        protected void FvQuestUpld_ModeChanging(object sender, FormViewModeEventArgs e)
        {

        }

        protected void FvQuestUpld_ItemInserting(object sender, FormViewInsertEventArgs e)
        {

        }

        protected void FvQuestUpld_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {

        }

        protected void FvQuestUpld_DataBound(object sender, EventArgs e)
        {

        }
    }
}