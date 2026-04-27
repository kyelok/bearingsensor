<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.EngineRunTimeModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    SetEngineRunTime
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
<h2>Set Engine Run Time</h2>

<script language="javascript" type="text/javascript"">
    
    $(document).ready(function () {
        //Find all text boxes
        //Enable or Disable them based upon the
        //value of Model.CanSave
        var textBoxes = $(":input");

        textBoxes.each(function () {
            
            if ("<%= Model.CanSave %>" == "False") {
                $(this).attr('readonly',true);
                $(this).attr('disabled',true);
            }
        });
    });

</script>

<% if (Model.Status != null)
       {%><p class="error">
        <%= Model.Status %></p>
<% } %>

<% using (Html.BeginForm("SubmitEngineRunTime", "WriteFilter", FormMethod.Post)) %>
    <% { %>
<table>
    <tr>
    <td>
    SPU Engine Run Time (Minutes):
    </td>
    <td>
    <%= Model.CurrentEngineRunTime%>
    </td>
    </tr>
    <tr>
    <td>
    <%= Html.HiddenFor(m => m.CurrentEngineRunTime)%>
    <%= Html.TextBoxFor(m => m.NewEngineRunTime, new { Onfocus = "TextInputFocus('NewEngineRunTime', true)" })%>
    </td>
    <td>
    <% if (Model.CanSave)
              { %>
           <input type="submit" class="button" value="Submit" />
           <%}
              else
              {  %>
                 <ul class="button"><li class="disabledButton"><a>Submit</a></li></ul>
              <% } %>
    </td>
    </tr>
</table>
<% } %>
     </td>
             
        </table>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
