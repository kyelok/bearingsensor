<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.ConfigRecord>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Add
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Add</h2>

<script src="/Scripts/MicrosoftAjax.js" type="text/javascript"></script>
    <script src="/Scripts/MicrosoftMvcValidation.js" type="text/javascript"></script>

    <% Html.EnableClientValidation(); %>

<% using (Html.BeginForm("AddSubmitted", "SpuConfig", FormMethod.Post)) %>
    <% { %>
    <% if (Model.Status == ConfigurationWebsite.Models.Status.Fail)
       { %>
        <p>Validation failed. Please check your data and try again.</p>
    <% } %>

    <table id="AddRegisterTable">
        <tr>
            <th>
                Name
            </th>
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
                Data Type
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
                Access Level
            </th>           
        </tr>
        <tr>
            <td>
                <%= Html.TextBoxFor(m => m.Name, new { MaxLength = "5", Onfocus = "TextInputFocus('Name', true)", Style = "width:120px" })%>
            </td>
            <td>
                <%= Html.TextBoxFor(m => m.Register, new { MaxLength = "5", Onfocus = "TextInputFocus('Register', true)", Style = "width:60px" })%>
            </td>
            <td>
                <%= Html.TextBoxFor(m => m.Description, new { Onfocus = "TextInputFocus('Description', false)", Style = "width:120px" })%>
            </td>
            <td>
                <%= Html.TextBoxFor(m => m.Value, new { MaxLength = "5", Onfocus = "TextInputFocus('Value', true)", Style = "width:60px" })%>
            </td>
            <td>
                <%= Html.DropDownList("Type", ViewBag.DataTypes as SelectList)%>
            </td>
            <td>
                <%= Html.TextBoxFor(m => m.MinLimit, new { MaxLength = "5", Onfocus = "TextInputFocus('MinLimit', true)", Style = "width:60px" })%>
            </td>
            <td>
                <%= Html.TextBoxFor(m => m.MaxLimit, new { MaxLength = "5", Onfocus = "TextInputFocus('MaxLimit', true)", Style = "width:60px" })%>
            </td>
            <td>
                <%= Html.DropDownList("UiControl", ViewBag.UiControls as SelectList)%>
            </td>
            <td>
                <%= Html.DropDownList("UserFunction", ViewBag.UserFunctions as SelectList)%>
            </td>
        </tr>
        <tr>
            <td>
                <%= Html.ValidationMessageFor(m => m.Name) %>
            </td>
            <td>
                <%= Html.ValidationMessageFor(m => m.Register) %>
            </td>
            <td>
               <%= Html.ValidationMessageFor(m => m.Description) %>
            </td>
            <td>
               <%= Html.ValidationMessageFor(m => m.Value) %>
            </td>
            <td>
               <%= Html.ValidationMessageFor(m => m.Type) %>
            </td>
            <td>
               <%= Html.ValidationMessageFor(m => m.MinLimit) %>
            </td>
            <td>
               <%= Html.ValidationMessageFor(m => m.MaxLimit) %>
            </td>
            <td>
                <%= Html.ValidationMessageFor(m => m.UiControl) %>
            </td>
        </tr>
    </table>
         

    
    
    <% if (Request.IsAuthenticated)
       { %>
            <ul class="button">
                <li class="button" ><input type="submit" value="Add" class="button"/></li>
                <li class="button"><%= Html.ActionLink("Cancel", "SPU", null, new { Style = "padding:0px;" })%></li>
            </ul>
        <%} 
                else
                { %>
                <p><% Html.RenderPartial("LogInMessage"); %></p>
                <% } %>
<% } %>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <% Html.RenderPartial("OnScreenKeyboard"); %>
</asp:Content>