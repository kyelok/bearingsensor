<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.ConfigRecord>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Edit</h2>

    <script src="/Scripts/MicrosoftAjax.js" type="text/javascript"></script>
    <script src="/Scripts/MicrosoftMvcValidation.js" type="text/javascript"></script>

    <% Html.EnableClientValidation(); %>

    <% using (Html.BeginForm("EditComplete", "SpuConfig", FormMethod.Post)) %>
    <% { %>
    <% if (Model.Status == ConfigurationWebsite.Models.Status.Fail)
       { %>
        <p>Validation failed. Please check your data and try again.</p>
    <% } %>
    <table>
        <tr>                        
            <th>Register</th><th>Description</th><th>Value</th><th>Min Limit</th><th>Max Limit</th><th>Time last set (web)</th><th>Time last set (SPU)</th>
        </tr>
        <tr>
            <td>
                <%= Model.Register %>
            </td>
            <td>
                <%= Model.Description %>
            </td>
            <td>
                <% switch (Model.UiControl)
                   {
                       case ConfigurationWebsite.Models.UiControl.ListBox: %>
                <%= Html.DropDownList("Value", Model.PossibleValues)%>
                <% break;
                       case ConfigurationWebsite.Models.UiControl.TextBox:
                       default: %>
                       <%= Html.TextBoxFor(m => m.Value, new { MaxLength = "10", Onfocus = "TextInputFocus('Value', true)" })%>
                   <%break;
                   } %>
            </td>
            <td>
                 <%= Model.MinLimit %>
            </td>
            <td>
               <%= Model.MaxLimit %>
            </td>
            <td>
            <% if (Model.TimeLastSetWeb > DateTime.MinValue)
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
        <tr>
            <td>
                <%= Html.ValidationMessageFor(m => m.Register) %>
            </td>
            <td>
               <%= Html.ValidationMessageFor(m => m.Description) %>
            </td>
            <td>
               <%= Html.ValidationMessageFor(m => m.Value) %>
            </td>
        </tr>
    </table>
            <!-- Hidden fields -->
             <%= Html.HiddenFor(m => m.Name)%>
             <%= Html.HiddenFor(m => m.Register)%>
             <%= Html.HiddenFor(m => m.Description)%>
             <%= Html.HiddenFor(m => m.MinLimit)%>
             <%= Html.HiddenFor(m => m.MaxLimit)%>
             <%= Html.HiddenFor(m => m.TimeLastSetWeb)%>
             <%= Html.HiddenFor(m => m.TimeLastSetSpu)%>
             <%= Html.HiddenFor(m => m.Type)%>
             <%= Html.HiddenFor(m => m.RowID)%>
             <%= Html.HiddenFor(m => m.UiControl)%>
              
     <% if (Request.IsAuthenticated)
       { %>
    <ul class="button">
                <li class="button"><input type="submit" value="Save" class="button" /></li>
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
