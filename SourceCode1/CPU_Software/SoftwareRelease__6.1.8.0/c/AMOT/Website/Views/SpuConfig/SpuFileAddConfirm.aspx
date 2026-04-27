<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.ConfigRecordModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Confirm
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Confirmation</h2>
<table>
                <tr>                        
                    <th>Name</th><th>Register</th><th>Description</th><th>Database Value</th><th>Min Limit</th><th>Max Limit</th><th>Access Level</th>
                </tr>

                <%
                    foreach(ConfigurationWebsite.Models.ConfigRecord rec in Model.ConfigRecordList)
                    { %>
                        <tr>
                            <td><%= rec.Name %></td>
                            <td><%= rec.Register %></td>
                            <td><%= rec.Description %></td>
                            <td><%= rec.Value %></td>
                            <td><%= rec.MinLimit %></td>
                            <td><%= rec.MaxLimit %></td>                           
                            <td><%= rec.UserFunction %></td>
                        </tr>
                    <% }
                %>
                  
            </table>

            <ul class="button">
                <li class="button"><%= Html.ActionLink("Import New Records", "AddFileConfirmed", null, new { Style = "line-height:22px;" })%></li>
                <li class="button"><%= Html.ActionLink("Cancel", "SPU")%></li>
                <li></li>
            </ul>
</asp:Content>