<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.SPUTimeModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Set SPU Time
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Advanced Settings</h2>
    <table>
        <td width="160" valign="top">
                    <table width="160" border="0">
                       <tr>
    <td>    
    <% if ((ViewData["SPUCommsError"] != null && (bool)(ViewData["SPUCommsError"]) != false) || ViewData["SPUCommsError"] == null)
       {%>
        <ul class="disabledmenu"><li><a>Write Filter Settings</a></li></ul>
    <% } else { %>
        <ul class="menu"><li><%= Html.ActionLink("Write Filter Settings ", "WriteFilterSettings", "WriteFilter") %></li></ul>
        <% }%>
    </td>
</tr>
<tr>
    <td>
    <ul class="menu"><li><%= Html.ActionLink("Graph Scale Settings", "GraphScaleSettings", "Configuration") %></li></ul>
    </td>
</tr>
<tr>
    <td>
    <ul class="menu"><li><%= Html.ActionLink("Clear Event Log", "ClearEventLog", "Configuration") %></li></ul>
    </td>
</tr>
<tr>
    <td>
    <% if ((ViewData["SPUCommsError"] != null && (bool)(ViewData["SPUCommsError"]) != false) || ViewData["SPUCommsError"] == null)
       {%>
        <ul class="disabledmenu"><li><a>Reset Learning</a></li></ul>
    <% } else { %>
    <ul class="menu"><li><%= Html.ActionLink("Reset Learning", "ResetLearningValues", "WriteFilter")%></li></ul>
        <% }%>
    </td>
</tr>
<tr>
    <td>
    <% if ((ViewData["SPUCommsError"] != null && (bool)(ViewData["SPUCommsError"]) != false) || ViewData["SPUCommsError"] == null)
       {%>
        <ul class="disabledmenu"><li><a>Clear Alarm List</a></li></ul>
    <% } else { %>
    <ul class="menu"><li><%= Html.ActionLink("Clear Alarm List", "ClearAlarmList", "WriteFilter")%></li></ul>
        <% }%>
    </td>
</tr>

<tr>
    <td>
    <% if ((ViewData["SPUCommsError"] != null && (bool)(ViewData["SPUCommsError"]) != false) || ViewData["SPUCommsError"] == null)
       {%>
        <ul class="disabledmenu"><li><a>Clear Firing Order</a></li></ul>
    <% } else { %>
    <ul class="menu"><li><%= Html.ActionLink("Clear Firing Order", "ClearFiringOrder", "WriteFilter")%></li></ul>
        <% }%>
    </td>
</tr>

<tr>
    <td>
    <% if ((ViewData["SPUCommsError"] != null && (bool)(ViewData["SPUCommsError"]) != false) || ViewData["SPUCommsError"] == null)
       {%>
        <ul class="disabledmenu"><li><a>Set Engine Run Time</a></li></ul>
    <% } else { %>
    <ul class="menu"><li><%= Html.ActionLink("Set Engine Run Time", "SetEngineRunTime", "WriteFilter")%></li></ul>
        <% }%>
    </td>
</tr>

<tr>
    <td>
    <% if ((ViewData["SPUCommsError"] != null && (bool)(ViewData["SPUCommsError"]) != false) || ViewData["SPUCommsError"] == null)
       {%>
        <ul class="disabledmenu"><li><a>Reset 6Hr Pre-warning</a></li></ul>
    <% } else { %>
    <ul class="menu"><li><%= Html.ActionLink("Reset 6Hr Pre-warning", "ReSetPrewarning", "WriteFilter")%></li></ul>
        <% }%>
    </td>
</tr>

<tr>
    <td>
    <% if ((ViewData["SPUCommsError"] != null && (bool)(ViewData["SPUCommsError"]) != false) || ViewData["SPUCommsError"] == null)
       {%>
        <ul class="disabledmenu"><li><a>Set SPU Date and Time</a></li></ul>
    <% } else { %>
    <ul class="menu"><li><%= Html.ActionLink("Set SPU Date/Time", "SPUDateTime", "SerialConfig") %></li></ul>
        <% }%>
    </td>
</tr>
<tr>
    <td>
    <ul class="menu"><li><%= Html.ActionLink("Diagnostic Logs", "DiagnosticsLogs", "Diagnostics")%></li></ul>
    </td>
</tr>
<tr>
    <td>
    <ul class="menu"><li><%= Html.ActionLink("Temperature Settings", "TemperatureSettings", "Configuration")%></li></ul>
    </td>
</tr>
                    </table>
                </td> 
        <td width="100%" valign="top">
<% using (Html.BeginForm("ChangeSPUTime", "SerialConfig", FormMethod.Post))
   { %>
 <h2>
        Set SPU Date Time</h2>
    <% if (Model.ConfigModified)
   { %>
         <% if (Model.CanRestartServer)
            { %>
        <p class="error">
            SPU time has been modified.</p>
        <p class="error">
            Please restart server for changes to take effect.</p>
            <% } %>
            <% else
            { %>
            <p class="error">
            Incorrect Date or Time, please re-enter</p>
            <% } %>
    <% } %>
    <% else { %>
        <p class="error"> Please change SPU time</p>
    <% } %>
    
   
    <table>
    
    <tr>
        <td>
        Year:
        </td>
        <td>    
        <%= Html.TextBoxFor(m => m.Year, new { Onfocus = "TextInputFocus('Year', true)" })%>
        </td>       
    </tr>

    <tr>
        <td>
        Month:
        </td>
        <td>    
        <%= Html.TextBoxFor(m => m.Month, new { Onfocus = "TextInputFocus('Month', true)" })%>
        </td>       
    </tr>

    <tr>
        <td>
        Day:
        </td>
        <td>    
        <%= Html.TextBoxFor(m => m.Day, new { Onfocus = "TextInputFocus('Day', true)" })%>
        </td>       
    </tr>

    <tr>
        <td>
        Hour:
        </td>
        <td>    
        <%= Html.TextBoxFor(m => m.Hour, new { Onfocus = "TextInputFocus('Hour', true)" })%>
        </td>       
    </tr>

    <tr>
        <td>
        Minute:
        </td>
        <td>    
        <%= Html.TextBoxFor(m => m.Minute, new { Onfocus = "TextInputFocus('Minute', true)" })%>
        </td>       
    </tr>

    <tr>
        <td>
        Second:
        </td>
        <td>    
        <%= Html.TextBoxFor(m => m.Second, new { Onfocus = "TextInputFocus('Second', true)" })%>
        </td>       
    </tr>

</table>

 <ul class="button">
        <% if (Model.CanSave)
           { %>
        <li class="button">
            <input type="submit" value="Submit" class="button" /></li>
        <% }
           else
           { %>
          <li class="disabledButton"><a>Submit</a></li>
          <% }
              %>
        <% if (Model.ConfigModified && Model.CanReboot && Model.CanRestartServer)
           { %>
        <li class="button"><%= Html.ActionLink("Restart Server", "RestartServerAfterTimeChange")%></li>
        <% } %>
        <% else { %>
        <li class="disabledButton"><a>Restart Server</a></li>
        <% } %>

    </ul>
    <% } %>
            </td>
             
        </table>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
