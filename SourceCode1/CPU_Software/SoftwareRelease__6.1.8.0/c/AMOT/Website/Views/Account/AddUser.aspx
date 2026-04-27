<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.UserDetailsModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    AddUser
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Add User</h2>

<% using(Html.BeginForm("AddUserComplete", "Account")) { %>
<table>
    <tr>
        <td>User Name</td><td><%= Html.TextBoxFor(m => m.UserName, new { Onfocus = "TextInputFocus('UserName', false)" })%> <%= Html.ValidationMessageFor(m => m.UserName) %></td>
    </tr>
    <tr>
        <td>Password</td><td><%= Html.PasswordFor(m => m.NewPassword, new { Onfocus = "TextInputFocus('NewPassword', false)" })%> <%= Html.ValidationMessageFor(m => m.NewPassword) %></td>
    </tr>
    <tr>
        <td>Re-enter Password</td><td><%= Html.PasswordFor(m => m.NewPasswordCheck, new { Onfocus = "TextInputFocus('NewPasswordCheck', false)" })%> <%= Html.ValidationMessageFor(m => m.NewPasswordCheck) %></td>
    </tr>
    <tr>
        <td>User Level : </td>
        <td>
            <% foreach (string userGroup in Model.UserGroupTypes.Keys)
               {
                   if (userGroup != "amot" && userGroup != "Amot")
                   {%>
                <%= Html.RadioButtonFor(m => m.UserGroup, userGroup)%><%= userGroup%><br />
            <% }
               } %>
        </td>
    </tr>

    <tr>
        <td>
            User Time Out
        </td>
        <td>
            <%= Html.TextBoxFor(m => m.TimeOut, new { Onfocus = "TextInputFocus('TimeOut', true)" }) %> <%= Html.ValidationMessageFor(m => m.TimeOut) %> minutes
        </td>
    </tr>
</table>
            <% if(Request.IsAuthenticated) { %>
            <input type="submit" value="Submit" class="button" />
            <% }
                else
                { %>
                <p><% Html.RenderPartial("LogInMessage"); %></p>
                <% } %>
<% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
