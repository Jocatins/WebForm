<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewState.aspx.cs" Inherits="WebForm.ViewState" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
    <h2 id="title"><%: Title %>.</h2>
    <h3 runat="server" id="divMessage" class="message">View State</h3>
    <div class="lead">
        <asp:Literal ID="ltPostback" runat="server"/>
    </div>
        <div>

        <label>Name</label>
        <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvName" ControlToValidate="txtName" ErrorMessage="Required" Display="Dynamic" />
    </div>
    <div>
        <label>Email</label>
        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
         <asp:RegularExpressionValidator runat="server" ID="revEmail" 
             ControlToValidate="txtEmail" ErrorMessage="Invalid Email" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"/>
    <asp:RequiredFieldValidator runat="server" ID="rfvEmail" ControlToValidate="txtEmail" ErrorMessage="Required" Display="Dynamic"/>
    </div>
    <div>
        <label>Age</label>
        <asp:TextBox runat="server" ID="txtAge" CssClass="form-control"></asp:TextBox>
    </div>
    
    <div class="mt-3">
        <asp:Button ID="btnSubmit" Text="Submit Info" runat="server"  CssClass="btn btn-primary btn-large" OnClick="btnSubmit_Click"/>
    </div>
    <div class="message">
        <asp:Literal runat="server" ID="ltMessage"></asp:Literal>
    </div>
</main>
</asp:Content>
