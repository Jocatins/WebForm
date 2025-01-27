using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class Events : System.Web.UI.Page
    {
        private List<MyEvent> myEvents;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session["MyEvents"] = new List<MyEvent>();
            }
            myEvents = (List<MyEvent>)Session["MyEvents"];
            BindEvents();
        }

        protected void btnEvent_Click(object sender, EventArgs e)
        {
            UpdateEvents();
            BindEvents();
        }
        private void UpdateEvents()
        {
            
            myEvents = (List<MyEvent>)Session["MyEvents"];
            myEvents.Add(new MyEvent(txtEvent.Text, calendarEvents.SelectedDate));
            Session["MyEvents"] = myEvents;
        }
        private void BindEvents()
        {
            rptEvents.DataSource = myEvents;
            rptEvents.DataBind();
        }
    }
    public class MyEvent
    {
        public string EventName
        {
            get;
            private set;
        }
        public string EventDate
        {
            get; private set;
        }
        public MyEvent(string eventName, DateTime eventDate)
        {
            EventName = eventName;
            EventDate = eventDate.ToShortDateString();
        }
    }
}