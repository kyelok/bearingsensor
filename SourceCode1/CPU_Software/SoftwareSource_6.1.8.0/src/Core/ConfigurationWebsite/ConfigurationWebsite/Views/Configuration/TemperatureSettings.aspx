<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.TemperatureSettingModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Temperature Settings
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script src="<%: Url.Content("~/Scripts/jquery-1.5.1.min.js") %>" type="text/javascript"></script>

    <script type="text/javascript">

        jQuery(document).ready(function ($) {
            toggleImportPanel(false, -1);

            centerImportPanel();
        });

        $(window).resize(function () {
            // The window may fire multiple resize events during the operation
            // Only call the resizeEnd event once the resize has finished + 500ms
            if (this.resizeTo) clearTimeout(this.resizeTo);
            this.resizeTo = setTimeout(function () {
                $(this).trigger('resizeEnd');
            }, 500);
        });

        $(window).bind('resizeEnd', function () {
            // The user has not resized the window for 500ms
            centerImportPanel();
        });

        function toggleImportPanel(v) {
            // Toggles the div containing the Import File dialog
            if (v) {
                $("#importPanel").show();
            } else {
                $("#importPanel").hide();
            }
        }

        function centerImportPanel() {
            // Center the Import Panel on screen
            var iP_top = $(window).height() / 2 - $("#importPanel").height() / 2;
            var iP_left = $(window).width() / 2 - $("#importPanel").width() / 2;

            $("#importPanel").css('top', iP_top + 'px');
            $("#importPanel").css('left', iP_left + 'px');

        }
    </script>
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
<h2>Temperature Settings</h2>
<% using (Html.BeginForm("TemperatureSettingsComplete", "Configuration"))
   { %>
   <% if (Model != null && Model.MessageImport != null && (Model.Imported || Model.ModuleEnabled == false))
       { %>
    <p class="error">
        <%= Model.MessageImport %></p>
    <% } %>

    <%if (Model.ModuleEnabled)
      { %>
<table cellspacing="0">
        <tr>
            <td>
                <ul class="button">                    
                    <li class="button"><%= Html.ActionLink("Export", "ExportTemperatureSettings")%></li>                                                          
                    <li id="importPanelBut" class="button">
                        <a href="#" style="line-height:22px" onclick="toggleImportPanel(true); return false;">Import settings</a>
                    </li>
                
                </ul>
            </td>
            </tr>
    </table>   
    <%} %>
<table>
    <tr>
        <th>Total sensor number</th>
    </tr>    
    <tr>        
        <td><%= Html.TextBoxFor(m => m.sensorNumber, new { Onfocus = "TextInputFocus('sensorNumber', true)" })%> <%= Html.ValidationMessageFor(m => m.sensorNumber)%></td>
    </tr>

    <tr>
        <th>Sensor per main bearing</th>
    </tr>
    <tr>        
        <td><%= Html.TextBoxFor(m => m.mainsensorNumber, new { Onfocus = "TextInputFocus('Main bearing sensor number', true)" })%> <%= Html.ValidationMessageFor(m => m.mainsensorNumber)%></td>
    </tr>

    <tr>
        <th>Sensor per crankpin bearing</th>
    </tr>
    <tr>        
        <td><%= Html.TextBoxFor(m => m.crankPinsensorNumber, new { Onfocus = "TextInputFocus('Crankpin bearing sensor number', true)" })%> <%= Html.ValidationMessageFor(m => m.crankPinsensorNumber)%></td>
    </tr>

    <tr>
        <th>Sensor per crosshead bearing</th>
    </tr>
    <tr>        
        <td><%= Html.TextBoxFor(m => m.crossHeadsensorNumber, new { Onfocus = "TextInputFocus('Crosshead bearing sensor number', true)" })%> <%= Html.ValidationMessageFor(m => m.crossHeadsensorNumber)%></td>
    </tr>

    <tr>
        <th>RTD per module</th>
    </tr> 
    <tr>        
        <td><%= Html.TextBoxFor(m => m.RtdPerPlc, new { Onfocus = "TextInputFocus('RtdPerPlc', true)" })%> <%= Html.ValidationMessageFor(m => m.RtdPerPlc)%></td>
    </tr>

    <tr>
        <th>Bar scale</th>
    </tr>    
    <tr>        
        <td><%= Html.TextBoxFor(m => m.tempGraphScale, new { Onfocus = "TextInputFocus('tempGraphScale', true)" })%> <%= Html.ValidationMessageFor(m => m.tempGraphScale)%></td>
    </tr>

    <tr>
        <th>Dev bar scale</th>
    </tr>    
    <tr>        
        <td><%= Html.TextBoxFor(m => m.tempGraphDevScale, new { Onfocus = "TextInputFocus('tempGraphDevScale', true)" })%> <%= Html.ValidationMessageFor(m => m.tempGraphDevScale)%></td>
    </tr>

    <tr>
        <th>Rising hysteresis (%)</th>
    </tr>    
    <tr>        
        <td><%= Html.TextBoxFor(m => m.risingHysteresis, new { Onfocus = "TextInputFocus('Rising hysteresis', true)" })%> <%= Html.ValidationMessageFor(m => m.risingHysteresis)%></td>
    </tr>

    <tr>
        <th>Falling hysteresis (%)</th>
    </tr>
    <tr>        
        <td><%= Html.TextBoxFor(m => m.fallingHysteresis, new { Onfocus = "TextInputFocus('Rising hysteresis', true)" })%> <%= Html.ValidationMessageFor(m => m.fallingHysteresis)%></td>
    </tr>

    <tr>
        <td>
         </td>
    </tr>
    
</table>
        <% if (Model.CanSave)
        { %>
            <input type="submit" value="Save" class="button"/>
        <% }
            else
            { %>
            <p><% Html.RenderPartial("LogInMessage"); %></p>
            <ul class="button"><li class="disabledButton"><a>Save</a></li></ul>
            <% } %>
            <p class="error" style="clear:both;"><%= Model.Message %></p>
       
<% } %>       

    <div id="importPanel" class="importPanel">
        <h2>&nbspImport</h2>
        <% using (Html.BeginForm("ImportTemperatureSettings", "Configuration", FormMethod.Post, new { enctype = "multipart/form-data" })) %>
        <% { %>
            <div style="position: absolute; left: 10px; top: 80px;"><input type="file" id="File6" name="TemperatureSettingsFile" onchange="this.form.submit()" style="width: 380px;"/></div>
        <% } %>
        <ul class="button" style="position: absolute; left: 310px; top: 130px;">
        <li id="Li1" class="button">
            <a href="#" onclick="toggleImportPanel(false); return false;">Cancel</a>
        </li>
        </ul>
    </div>
</td>
             
        </table>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <% Html.RenderPartial("OnScreenKeyboard"); %>
</asp:Content>
