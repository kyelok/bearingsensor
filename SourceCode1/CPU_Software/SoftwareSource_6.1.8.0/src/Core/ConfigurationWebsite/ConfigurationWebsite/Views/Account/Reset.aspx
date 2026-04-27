<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.UserReset>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Reset User Passwords
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Reset User Passwords</h2>

<% if (Model.Status != null)
       {%><p class="error">
        <%= Model.Status %></p>
<% } %>

<% using (Html.BeginForm("SubmitResetKey", "Account", FormMethod.Post)) %>
    <% { %>
<table>
    <tr>
    <td>
    Reset Key:
    </td>
    <td>
    <%= Model.ChallengeKey%>
    </td>
    </tr>
    <tr>
    <td>
    <%= Html.HiddenFor(m => m.ChallengeKey) %>
    <%= Html.TextBoxFor(m => m.ResponseKey, new { Onfocus = "TextInputFocus('ResponseKey', false)" })%>
    </td>
    <td>
    <input type="submit" class="button" value="Submit" />
    </td>
    </tr>
</table>
<% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
