<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.GlMachineModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    GL Machine Settings
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<script src="<%: Url.Content("~/Scripts/jquery-1.5.1.min.js") %>" type="text/javascript"></script>
<script language="javascript" type="text/javascript"">
    
    $(document).ready(function () {
        //Find all text boxes
        //Enable or Disable them based upon the
        //value of Model.CanSave
        var textBoxes = $(":input");

        textBoxes.each(function () {
            
            if ("<%= Model.CanSave %>" == "False") {
                $(this).attr('readonly',true);
                $(this).attr('disabled',true);
            }
        });

        getStatus();

    });

    function getStatus() {
        var url = 'GetProgress';
        var sessionID = '<%= Model.SessionID %>';

        $.get(url, { "sessionID": sessionID }, function (data) {
            if (data.complete) {
                $('#error').text(data.error);
            } else {
                window.setTimeout("getStatus()", 500);
            };
        }, "json");
    }

</script>


<h2>GL Machine Settings</h2>

<% using(Html.BeginForm("GlMachineSettingsComplete", "GlMachine")) { %>

<% if(Model.Status != null) { %>
    <p id="error" class="error"><%= Model.Status %></p>
<% } %>
<table width="100%">
    <tr>
        <td>Web&#8209;service&nbsp;address</td>
        <td width="100%"><%= Html.TextBoxFor(m => m.IpAddress, new { Onfocus = "TextInputFocus('IpAddress', false)", @class="wide" })%> <%= Html.ValidationMessageFor(m => m.IpAddress) %></td>
    </tr>

    <tr>
        <td>Login&nbsp;name</td>
        <td><%= Html.TextBoxFor(m => m.LoginName, new { Onfocus = "TextInputFocus('LoginName', false)" })%> <%= Html.ValidationMessageFor(m => m.LoginName) %></td>
    </tr>

    <tr>
        <td>Password</td>
        <td><%= Html.PasswordFor(m => m.Password, new { Onfocus = "TextInputFocus('Password', false)" })%> <%= Html.ValidationMessageFor(m => m.Password) %></td>
    </tr>
</table>
<% if(Model.CanSave) { %>
            <input type="submit" value="Submit" class="button" />
            <% }
                else
                { %>
                <ul class="button"><li class="disabledButton"><a>Submit</a></li></ul>
                <% } %>
<% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
