<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.TrendDataModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Trend Data
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Trend Data</h2>
<% if (Model.Status != null)
   { %>
    <p class="error"><%= Model.Status%></p>
<% } %>
<% using (Html.BeginForm("TrendDataComplete", "Configuration"))
   { %>
<table>
<tr>
    <td>Output Trend Data</td><td><%= Html.CheckBoxFor(m => m.IsEnabled)%></td>
</tr>
</table>

<% if (Model.CanSave)
   { %>
<ul class="button">
    <li class="button"><input type="submit" value="Save" class="button" /></li>
</ul>
<% } else
  { 
      Html.RenderPartial("LogInMessage"); %>
      <ul class="button"><li class="disabledButton"><a>Save</a></li></ul>
 <% } %>

<% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
