<%@ Page Title="" Language="C#" MasterPageFile="~/GCWU-Intranet.Master" AutoEventWireup="true" CodeBehind="Knockout.aspx.cs" Inherits="wet_boew_net_webforms.Knockout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CustomCSSPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h3>Pick your manufacturer:</h3>
    <ul id="myList" data-bind="foreach: choices">
    <li><p data-bind="text: $data"></p></li>
    </ul>
    <button id="toggleButton" data-bind="click: toggleChoices">Toggle</button>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CustomScriptsPlaceHolder" runat="server">
    <script>
        $(document).ready(function () {
            function ViewModel() {
                var self = this;
                
                var ddoptions = {
                    red: ['ford', 'dodge', 'chevy'],
                    green: ['toyota', 'honda'],
                    blue: ['bmw', 'volkswagon', 'fiat', 'renault']
                };

                self.choices = ko.observableArray(ddoptions.red);
                self.toggleChoices = function () {
                    $('#myList').hide(500, function () {
                        if (self.choices()[0] === 'ford') {
                            self.choices(ddoptions.green);
                        } else {
                            if (self.choices()[0] === 'toyota') {
                                self.choices(ddoptions.blue);
                            } else {
                                self.choices(ddoptions.red);
                            }
                        }
                    }).show(500);
                }
            };

            var vm = new ViewModel();

            ko.applyBindings(vm);
        });
    </script>
</asp:Content>
