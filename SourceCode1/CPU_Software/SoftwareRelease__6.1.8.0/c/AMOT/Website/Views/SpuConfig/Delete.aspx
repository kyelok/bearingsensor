<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.ConfigRecord>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<table>
        <tr>
            <th>
                Register
            </th>
            <th>
                Description
            </th>
            <th>
                Value
            </th>
            <th>
                Min Limit
            </th>
            <th>
                Max Limit
            </th>
            <th>
                UI Control
            </th>
            <th>
                Time last set (web)
            </th>
            <th>
                Time last set (SPU)
            </th>
           
        </tr>
        <tr>
            <td>
                <%= Model.Register %>
            </td>
            <td>
                <%= Model.Description %>
            </td>
            <td>
                <%= Model.Value %>
            </td>
            <td>
                <%= Model.MinLimit %>
            </td>
            <td>
                <%= Model.MaxLimit %>
            </td>
            <td>
                <%= Model.UiControl %>
            </td>
            <td><% if (Model.TimeLastSetWeb > DateTime.MinValue)
                    { %>
                <%= Model.TimeLastSetWeb.ToShortDateString() + " " + Model.TimeLastSetWeb.ToShortTimeString()%>
                <% }
                    else
                    { %>
                    Never
                <% } %>
            </td>
            <td>
                <% if (Model.TimeLastSetSpu > DateTime.MinValue)
                    { %>
                <%= Model.TimeLastSetSpu.ToShortDateString() + " " + Model.TimeLastSetSpu.ToShortTimeString()%>
                <% }
                    else
                    { %>
                    Never
                <% } %>

            </td>
        </tr>
    </table>
    <h3>Warning</h3>
    <p>Are you sure you want to delete the above record?</p>
    
    <ul class="button">
        <li class="button"><%= Html.ActionLink("Yes ./", "DeleteYes", new { rowid = Model.RowID }) %></li>
        <li class="button"><%= Html.ActionLink("No X", "SPU") %></li>
    </ul>

</asp:Content>
