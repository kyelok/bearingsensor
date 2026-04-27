<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.UpdateModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    System Update
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>System Software Update</h2>

<% using (Html.BeginForm("SystemUpdateComplete", "Update", FormMethod.Post, new { enctype = "multipart/form-data" })) %>
<% { %>
        <p class="clear">
            Upload Update Package: 
            <input type="file" id="updateFile" name="updateFile" onchange="this.form.submit()" />
        </p>
<% } %>

<% if (Model.FileList != null)
    { %>
    <p>Update files uploaded:</p>
    <ul>
        <% foreach (string fileName in Model.FileList)
           { %>
                <li><%= fileName %></li>
        <% } %>
    </ul>

    <ul class="button">
        <li class="button"><%= Html.ActionLink("Delete", "ClearUpdatePackages")%></li>
        <li class="button"><%= Html.ActionLink("Update", "RestartServer")%></li>
    </ul>
<% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
