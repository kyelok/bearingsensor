<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Update
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Update Firmware/Software</h2>


<ul class="button">
    <% if (((ViewData["SPUCommsError"] != null) && ((bool)(ViewData["SPUCommsError"]) == false)) &&
           (Model.CanSPUFirmwareUpdate))
       { %>
    <li class="button"><%= Html.ActionLink("Update SPU", "SPUFirmwareUpdate", "SPUUpdate")%></li>
    <% }
       else
       { %>
       <li class="disabledButton"><a>Update SPU</a></li>
    <% } %>

    <% if (Model.CanSystemUpdate)
       { %>
    <li class="button"><%= Html.ActionLink("Update PC", "SystemUpdate")%></li>
    <% } else { %>
    <li class="disabledButton"><a>Update PC</a></li>
    <% } %>
</ul>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
