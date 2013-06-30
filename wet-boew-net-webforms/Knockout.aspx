<%@ Page Title="" Language="C#" MasterPageFile="~/WET-Theme.Master" AutoEventWireup="true" CodeBehind="Knockout.aspx.cs" Inherits="wet_boew_net_webforms.Knockout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CustomCSSPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h3>Pick your category:</h3>
    <select data-bind="options: choices, optionsText: 'name', optionsValue: 'subCategories', value: subCat"></select>
    <ul id="myList" data-bind="foreach: subCat">
    <li><p data-bind="text: $data"></p></li>
    </ul>
    <span data-bind="text: summary"></span>
    <button id="toggleButton" data-bind="click: toggleChoices">Toggle</button>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CustomScriptsPlaceHolder" runat="server">
    <script src="Scripts/knockout-2.2.1.js"></script>
    <script>
        $(document).ready(function () {
            var Category = function (categoryName, subCat) {
                this.name = categoryName;
                this.subCategories = subCat;
            }

            function ViewModel() {
                var self = this;
                
                var ddOptions = [
                    new Category('truck', ['f-150', 'ram']),
                    new Category('car', ['civic', 'mercury', 'bug']),
                    new Category('bike', ['harley', 'GXR 600', 'Big Wheels'])
                ];

                self.choices = ko.observableArray(ddOptions);
                self.subCat = ko.observableArray();

                self.summary = ko.computed(function() {
                    return JSON.stringify(self.subCat());
                });
                /*self.toggleChoices = function () {
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
                }*/
            };

            var vm = new ViewModel();

            ko.applyBindings(vm);
        });
    </script>
</asp:Content>
