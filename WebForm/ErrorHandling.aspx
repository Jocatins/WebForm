<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ErrorHandling.aspx.cs" Inherits="WebForm.ErrorHandling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Error Handling Example</h1>
        <asp:Label ID="lblMessage" runat="server" Visible="false"></asp:Label>
        <div class="form-group">
            <label>This should be a decimal</label>
            <asp:TextBox runat="server" ID="txtDecimal" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-success mt-3" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </div>
</asp:Content>
