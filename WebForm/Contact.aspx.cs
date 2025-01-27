using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            divMessage.Attributes.Add("style", "color: blue");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string message = String.Format("Your name is {0}, and your email address is {1} and your age is {2}. " +
                "Your favorite color is {3}", txtName.Text, txtEmail.Text, txtAge.Text, ddlColor.SelectedValue);
            ltMessage.Text = message;
        }
    }
}