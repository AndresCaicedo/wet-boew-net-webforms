<%@ Page Title="" Language="C#" MasterPageFile="~/GCWU-Intranet.Master" AutoEventWireup="true" CodeBehind="WetIntranet.aspx.cs" Inherits="wet_boew_net_webforms.WetIntranet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<p>This is my page</p>
<asp:Button ID="TestButton" runat="server" CssClass="button" Text="Test Button" />
<asp:Button ID="TestButton2" runat="server" CssClass="button" Text="Another Button" />

<ul class="menu-horizontal">
<li><input type="submit" value="Button 1 l sdf asdf " class="button" onclick="alert('button 1');" /></li>
<li><input type="submit" value="Button 2 a4 aet 5ae5" class="button" onclick="alert('button 2');" /></li>
<li><input type="submit" value="Button 3 ae5t adf  " class="button" onclick="alert('button 3');" /></li>

</ul>

<div class="button-toolbar">
<p class="button-group">
<input type="submit" value="Edit" class="button" onclick="alert('button 1');" />
<input type="submit" value="Cancel" class="button" onclick="alert('button 2');" />
</p>
<p class="button-group">
<input type="submit" value="To OPI" class="button" onclick="alert('button 3');" />
<input type="submit" value="To CAS" class="button" onclick="alert('button 3');" />
<input type="submit" value="To IMT" class="button" onclick="alert('button 3');" />
</p>
</div>
<h2 id="base">Base classes</h2>
<p>Button CSS can be applied to a <code>&lt;button&gt;</code>, an <code>&lt;input&gt;</code> or a <code>&lt;a href&gt;</code>:  </p>
<ul class="list-bullet-none"><li class="margin-bottom-medium"><button class="button">Button</button></li>
<li><input type="submit" value="Input" class="button"></li>
<li><a href="#" class="button">Link</a></li>
</ul>
</asp:Content>
