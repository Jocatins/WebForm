using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class ViewState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
                ltPostback.Text = "Here is the post back";
            else
                ltPostback.Text = "Fill out this form, data won't be lost";
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}