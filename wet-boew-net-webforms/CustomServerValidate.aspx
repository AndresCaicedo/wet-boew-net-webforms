<%@ Page Title="" Language="C#" MasterPageFile="~/GCWU-Intranet.Master" AutoEventWireup="true" CodeBehind="CustomServerValidate.aspx.cs" Inherits="wet_boew_net_webforms.CustomServerValidate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="wet-boew-formvalid">
<asp:ValidationSummary runat="server" ID="SuperValidationSummary" CssClass="errorContainer" HeaderText="<p>There were errors encountered:</p>" />
<asp:Label runat="server" ID="SampleLabel" AssociatedControlID="SampleTextBox">Important Data (correct answer is &quot;cool&quot;)
<strong class="error">
<asp:CustomValidator runat="server" ID="MyCustomValidator" 
    ControlToValidate="SampleTextBox" 
    OnServerValidate="ValidateCoolness" 
    ErrorMessage="You need to type &quot;cool&quot; to pass" CssClass="error"
    />
    </strong>
</asp:Label><asp:TextBox runat="server" ID="SampleTextBox"></asp:TextBox><asp:Button runat="server" ID="MySubmitButton" Text="Submit" />
</div>
<b><asp:Literal runat="server" ID="SuccessLiteral"></asp:Literal></b></asp:Content>