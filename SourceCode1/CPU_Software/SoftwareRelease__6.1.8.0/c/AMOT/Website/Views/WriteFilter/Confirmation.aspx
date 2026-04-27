<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.ConfirmationModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Reboot Confirmation
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Confirmation</h2>
<p><%= Model.Message %></p>
<% if (Request.IsAuthenticated)
   { %>
<ul class="button">
    <li class="button"><%= Html.ActionLink("Yes", "ConfirmationYes", new { item = Model.ConfirmationItem })%></li>
    <li class="button"><%= Html.ActionLink("No", "ConfirmationNo")%></li>
</ul>
<% }
   else
   {
       Html.RenderPartial("LogInMessage");

   } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
