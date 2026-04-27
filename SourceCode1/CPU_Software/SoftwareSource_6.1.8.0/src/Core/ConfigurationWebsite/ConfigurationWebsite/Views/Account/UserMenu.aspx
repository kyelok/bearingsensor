<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.UserList>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    UserMenu
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>User Configuration</h2>
<table>
<tr><td colspan="2">    <% if (Model.ErrorMessage != null)
   { %>
        <p class="error"><%= Model.ErrorMessage%></p>
<% } %>
</td></tr>
<tr>
    <td valign="top">
        <h3>Edit a user</h3>
        <!-- Display a list of users -->
        <% if (Model.Users != null && Model.Users.Count > 0)
           { %>
        <table>
        <% foreach (WebServiceObjects.User user in Model.Users)
            { %>
                <tr>
                    <td>
                        <%= user.Username %>
                    </td>
                    <td style="min-width: 200px;">
                        <% if (Request.IsAuthenticated)
                            { %>
                        <ul class="button">

                            <%if ((user.Username == "AMOT") || (User.IsInRole("Users") == false))
                              {%>
                                <li class="disabledButton"><a>Edit</a></li>
                                <li class="disabledButton"><a>Delete</a></li>
                              <%} else if (user.Username == Model.CurrentUser) { %>
                                <li class="button"><%= Html.ActionLink("Edit", "EditUser", new { username = user.Username })%></li>
                                <li class="disabledButton"><a>Delete</a></li>
                              <% } else { %>

                                <li class="button"><%= Html.ActionLink("Edit", "EditUser", new { username = user.Username })%></li>
                                <li class="button"><%= Html.ActionLink("Delete", "DeleteUser", new { username = user.Username })%></li>

                                <%}%>
                        </ul>
                        <% } %>
                    </td>
                </tr>
        <% } %>
        </table>
        <% } %>
        <% else
           { %>
            <p>No users found.</p>
        <% } %>
    </td>
    <td valign="top">
        <h3>Other operations</h3>
        <table><tr><td>
            <ul class="button">
            <% if(Model.CanAdd) { %>        
                <li class="button"><%= Html.ActionLink("Add a New User", "AddUser") %></li>
            <% }
               else
               { %>
                <li class="disabledButton"><a>Add a New User</a></li>
            <% } %>
            </ul>
        </td></tr>
        <tr><td>
            <ul class="button">
                <li class="button"><%= Html.ActionLink("Reset", "ResetPasswords") %></li>
            </ul>
        </td></tr>
        </table>
    </td>
</tr></table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
