<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.WriteFilterModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Write Filter Settings
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
                    
    <h2>
        Write Filter Settings</h2>
    <% if (Model.Status != null)
       { %>
    <p class="error">
        <%= Model.Status %></p>
    <% } %>
    <table>
        <tr>
            <th>
            </th>
            <th>
                Operating System Protection
            </th>
        </tr>
        <tr>
            <th>
                Current
            </th>
            <td class="<%= Model.DiskProtectionStatusCurrent %>">
                <% if (Model.DiskProtectionStatusCurrent)
                   { %>
                Enabled
                <%}
                   else
                   { %>
                Disabled
                <% } %>
            </td>
        </tr>
        <tr>
            <th>
                After Reboot
            </th>
            <td class="<%= Model.DiskProtectionStatusNext %>">
                <% if (Model.DiskProtectionStatusNext)
                   { %>
                Enabled
                <%}
                   else
                   { %>
                Disabled
                <% } %>
            </td>
        </tr>
    </table>
                <ul class="button">
                    <%
                       if (Model.DiskProtectionStatusNext)
                       {
                           //Show warning %>
                    <% if (Model.CanEnableDisableDiskProtection)
                       { %>
                       <li class="button"><%= Html.ActionLink("Disable Protection", "Confirmation", new { item = ConfigurationWebsite.Models.ConfirmationItem.UnprotectDrive })%></li>
                    <% }
                       else
                       { %>
                    <li class="disabledButton"><a>Disable</a></li>
                    <% } %>
                    <% }
                   else
                   { %>

                    <% if (Model.CanEnableDisableDiskProtection)
                       { %>
                    <li class="button">
                        <%= Html.ActionLink("Enable", "ToggleDiskProtectionStatus", new { nextDiskProtectionStatus = Model.DiskProtectionStatusNext })%></li>
                    <% }
                       else
                       { %>
                    <li class="disabledButton"><a>Enable</a></li>
                    <% } %>
                    <% } %>
                    <% if (Model.CanReboot)
                       { %>
                    <li class="button">
                        <%= Html.ActionLink("Reboot", "ConfirmationYes", new { item = ConfigurationWebsite.Models.ConfirmationItem.Reboot })%></li>
                    <% }
                       else
                       { %>
                    <li class="disabledButton"><a>Reboot</a></li>
                    <% } %>
                </ul>
            </td>
             
        </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
