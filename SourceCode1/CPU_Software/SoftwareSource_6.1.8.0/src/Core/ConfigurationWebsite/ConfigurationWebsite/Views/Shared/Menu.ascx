<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>

<tr>
<td id="xts_button">
    <ul class="menu"><li><a href="/">Home</a></li></ul>
</td>
</tr>
<tr>
    <td>
        <ul class="menu"><li><%= Html.ActionLink("Advanced Settings", "AdvancedMenu", "Home") %></li></ul>        
    </td>
</tr>
<tr>
    <td>
    <% if ((ViewData["SPUCommsError"] != null && (bool)(ViewData["SPUCommsError"]) != false) || ViewData["SPUCommsError"] == null)
       {%>
        <ul class="disabledmenu"><li><a>SPU Settings</a></li></ul>
    <% } else { %>
        <ul class="menu"><li><%= Html.ActionLink("SPU Settings", "SPU", "SpuConfig")%></li></ul>
        <% }%>
    </td>
</tr>
<tr>
    <td>
        <ul class="menu"><li><%= Html.ActionLink("Serial Configuration", "SerialConfig", "SerialConfig") %></li></ul>
    </td>
</tr>
<tr>
    <td>
        <ul class="menu"><li><%= Html.ActionLink("Ship Information", "ShipInfo", "Configuration")%></li></ul>
    </td>
</tr>
<tr>
    <td>
    <% if ((ViewData["SPUCommsError"] != null && (bool)(ViewData["SPUCommsError"]) != false) || ViewData["SPUCommsError"] == null)
       {%>
        <ul class="disabledmenu"><li><a>Import/Export settings</a></li></ul>
    <% } else { %>
        <ul class="menu"><li><%= Html.ActionLink("Import/Export Settings", "ImportExport", "Configuration") %></li></ul>
        <% }%>        
    </td>
</tr>
<tr>
    <td>
        <ul class="menu"><li><%= Html.ActionLink("User Configuration", "UserMenu", "Account") %></li></ul>
    </td>
</tr>
<tr>
    <td>
    <% if ((ViewData["SPUCommsError"] != null && (bool)(ViewData["SPUCommsError"]) != false) || ViewData["SPUCommsError"] == null)
       {%>
        <ul class="disabledmenu"><li><a>Sensor Configuration</a></li></ul>
    <% } else { %>
        <ul class="menu"><li><%= Html.ActionLink("Sensor Configuration", "Sensors", "WriteFilter")%></li></ul>
        <% }%>
        
    </td>
</tr>
<tr>
    <td>
        <ul class="menu"><li><%= Html.ActionLink("GL Machine Settings ", "GlMachineSettings", "GlMachine") %></li></ul>
    </td>
</tr>
<tr>
    <td>
    <% if ((ViewData["SPUCommsError"] != null && (bool)(ViewData["SPUCommsError"]) != false) || ViewData["SPUCommsError"] == null)
       {%>
        <ul class="disabledmenu"><li><a>Test Alarms</a></li></ul>
    <% } else { %>
        <ul class="menu"><li><%= Html.ActionLink("Test Alarms", "TestAlarms", "Configuration") %></li></ul>
        <% }%>
        
    </td>
</tr>
<tr>
    <td>
    <% if ((ViewData["SPUCommsError"] != null && (bool)(ViewData["SPUCommsError"]) != false) || ViewData["SPUCommsError"] == null)
       {%>
        <ul class="disabledmenu"><li><a>Modbus Direct Access</a></li></ul>
    <% } else { %>
        <ul class="menu"><li><%= Html.ActionLink("Modbus Direct Access", "ModbusAccess", "WriteFilter")%></li></ul>
        <% }%>
        
    </td>
</tr>
<tr>
    <td>
        <ul class="menu"><li><%= Html.ActionLink("Network Settings", "Network", "NetworkConfig")%></li></ul>
    </td>
</tr>
<tr>
    <td>
        <ul class="menu"><li><%= Html.ActionLink("Update", "Update", "Update") %></li></ul>
    </td>
</tr>


