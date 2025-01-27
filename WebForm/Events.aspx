<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="WebForm.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>Advanced Server Controls ASP.Net</h2>
        <h3>Create a list of events in a repeater from a calendar control</h3>
        <div class="form-group">
            <label>Event Name:</label>
            <asp:TextBox runat="server" ID="txtEvent" CssClass="form-control" />
            <br />
        </div>
        <div class="form-group">
            <label>Event Date:</label>
            <asp:Calendar runat="server" ID="calendarEvents" />
        </div>
        <br />
        <div class="form-group">
            <asp:Button ID="btnEvent" runat="server" CssClass="btn btn-primary btn-large" Text="Add Event" OnClick="btnEvent_Click" />
        </div>
        <h3>Events Repeater</h3>
        <div>
            <asp:Repeater ID="rptEvents" runat="server">
                <ItemTemplate>
                    <h3>
                        <%# DataBinder.Eval(Container.DataItem, "EventDate") %> 
                        <small><%# DataBinder.Eval(Container.DataItem, "EventName") %></small>
                    </h3>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
