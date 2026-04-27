<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.UserDetailsModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    DeleteUser
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete User</h2>
<p>Are you sure you wish to delete user <%= Model.UserName %> (with user level: <%= Model.UserGroup %>)?</p>
 
 <% if(Request.IsAuthenticated) { %>
 <ul class="button">
        <li class="button"><%= Html.ActionLink("Yes", "DeleteUserComplete", new { username = Model.UserName })%></li>
        <li class="button"><%= Html.ActionLink("No", "UserMenu") %></li>
    </ul>
    <% }
                else
                { %>
                <p><% Html.RenderPartial("LogInMessage"); %></p>
                <% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
