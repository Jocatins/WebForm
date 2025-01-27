<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebForm.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3 runat="server" id="divMessage" class="message">Your contact page.</h3>
        <div>
            <label>Name</label>
            <asp:TextBox runat="server" ID="txtName"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfvName" ControlToValidate="txtName" ErrorMessage="Required" Display="Dynamic"/>
        </div>
        <div>
            <label>Email</label>
            <asp:TextBox runat="server" ID="txtEmail"></asp:TextBox>
             <asp:RegularExpressionValidator runat="server" ID="revEmail" 
                 ControlToValidate="txtEmail" ErrorMessage="Invalid Email" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"/>
        <asp:RequiredFieldValidator runat="server" ID="rfvEmail" ControlToValidate="txtEmail" ErrorMessage="Required" Display="Dynamic"/>
        </div>
        <div>
            <label>Age</label>
            <asp:TextBox runat="server" ID="txtAge"></asp:TextBox>
        </div>
        <div>
            <label>Favorite Color</label>
            <asp:DropDownList runat="server" ID="ddlColor">
                <asp:ListItem Text="Please Choose a color" Value=""></asp:ListItem>
                <asp:ListItem Text="Blue" Value="Blue"></asp:ListItem>
                  <asp:ListItem Text="Red" Value="Red"></asp:ListItem>
                  <asp:ListItem Text="Green" Value="Green"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ID="rfvColor" ControlToValidate="ddlColor" ErrorMessage="Required" Display="Dynamic"/>
        </div>
        <div>
            <asp:Button ID="btnSubmit" Text="Submit Info" runat="server" OnClick="btnSubmit_Click"/>
        </div>
        <div class="message">
            <asp:Literal runat="server" ID="ltMessage"></asp:Literal>
        </div>
    </main>
</asp:Content>
