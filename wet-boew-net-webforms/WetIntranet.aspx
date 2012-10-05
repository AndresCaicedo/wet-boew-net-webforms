<%@ Page Title="" Language="C#" MasterPageFile="~/GCWU-Intranet.Master" AutoEventWireup="true" CodeBehind="WetIntranet.aspx.cs" Inherits="wet_boew_net_webforms.WetIntranet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h2>My Tabbed Interface</h2>
    <div class="wet-boew-tabbedinterface tabs-style-1">
    <ul class="tabs">
    <li class="default"><a href="#tabs1_1">My Documents</a></li>
    <li><a href="#tabs1_2">Initial Reading</a></li>
    <li><a href="#tabs1_3">Review By Coordinator</a></li>
    <li><a href="#tabs1_4">Approved</a></li>
    </ul>
    <div class="tabs-panel">
    <div id="tabs1_1">
    <div class="span-4">
    <ul class="menu-horizontal">
    <li><input type="submit" value="Button 1 l sdf asdf " class="button" onclick="alert('button 1');" /></li>
    <li><input type="submit" value="Button 2 a4 aet 5ae5" class="button" onclick="alert('button 2');" /></li>
    <li><input type="submit" value="Button 3 ae5t adf  " class="button" onclick="alert('button 3');" /></li>
    </ul>
    <p>This is my personal list of documents.  It's important to follow all the directions provided.</p>
    <p>Another line of information.</p>
    <p>How best to use this Framework?  Consider using the following steps to reproduce your activities extra long work non-sensical sentences.</p>
    </div>
    <div class="span-3 module-comment">
    <p class="background-dark">3 Comments</p>
    <ol class="wet-boew-zebra">
    <li>
    <div>Jessica</div>
    <div>November 19, 2009</div>
    This is placeholder text. This is placeholder text. This is placeholder text. This is placeholder text. This is placeholder text. This is placeholder text. This is placeholder text.</li>
    <li>
    <div>Mihn</div>
    <div>November 19, 2009</div>
    This is placeholder text. This is placeholder text. This is placeholder text. This is placeholder text. This is placeholder text. This is placeholder text. This is placeholder text. blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah</li>
    <li>
    <div>Eddie</div>
    <div>November 19, 2009</div>
    This is placeholder text. This is placeholder text. This is placeholder text. This is placeholder text. This is placeholder text. This is placeholder text. This is placeholder text.</li>
    </ol>
    </div>
    <div class="clear"></div>
    </div>
    <div id="tabs1_2">
    <p>The document has just started its review process.  We need to consider what changes need to be made, what revisions are applicable at this time.</p>
    </div>
    <div id="tabs1_3">
    <p>Have you followed through on all your objectives?  Are there any issues we still need to address?</p>
    </div>
    <div id="tabs1_4">
    <p>Approved.  No further changes after this point.</p>
    </div>
    </div>
    </div>
    <div class="clear"></div>
    <div class="module-info span-3">
    <h3><span class="color-dark">Refer:</span> Lorem ipsum dolor sit amet</h3>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
    </div>
</asp:Content>
