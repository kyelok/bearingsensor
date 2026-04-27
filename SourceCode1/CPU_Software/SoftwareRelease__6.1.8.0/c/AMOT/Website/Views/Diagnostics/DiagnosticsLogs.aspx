<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.DiagnosticsLogsModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    DiagnosticsLogs
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

	<link rel="stylesheet" type="text/css" href="<%: Url.Content("~/Content/jquery.tablescroll.css") %>"/>
    <script src="<%: Url.Content("~/Scripts/jquery.scrollTo.js") %>" type="text/javascript"></script>

    <script type="text/javascript">

        var spuScrollPos = 0;
        var spuTableRow = 0;

        jQuery(document).ready(function ($) {
            var spuTableHeight = $(window).height() - 500;
            spuTableHeight = Math.max(spuTableHeight, 150);

            spuTableRow = 0;

            $("#tableScroller").height(spuTableHeight);

            $("#spuHeaderTable").width($("#spuTable").width());
            for (var i = 0; i < 8; i++) {
                $("#spuHeaderTable tr:first th:eq(" + i + ")").width($("#spuTable tr:first td:eq(" + i + ")").width());
            }

            // Final header column spans 2 data columns
            var actionColWidth = $("#spuTable tr:first td:eq(8)").width() + $("#spuTable tr:first td:eq(9)").width();
            $("#spuHeaderTable tr:first th:eq(" + i + ")").width(actionColWidth);
            $("#actionsTable").width($("#spuTable").width());

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

            var spuTableHeight = $(window).height() - 500;
            spuTableHeight = Math.max(spuTableHeight, 150);

            $('#tableScroller').height(spuTableHeight);
        });

        function scrollTableToRow() {
            var spuRowCount = $("#spuTable tr").length;
            var spuRowOffset = 0;

            spuTableRow = Math.max(spuTableRow, 0);
            spuTableRow = Math.min(spuTableRow, spuRowCount - 1);

            var scrollUpButtonEnabled = $("#scrollUpButton").hasClass('button');
            var scrollDownButtonEnabled = $("#scrollDownButton").hasClass('button');

            // Note: Only remove the required CSS class when required, stops flickering
            if (spuTableRow == 0 && $("#scrollUpButton").hasClass('button')) {
                $("#scrollUpButton").removeClass('button');
                $("#scrollUpButton").addClass('disabledButton');
                $("#pgUpButton").removeClass('button');
                $("#pgUpButton").addClass('disabledButton');
            }
            else if (spuTableRow != 0 && $("#scrollUpButton").hasClass('disabledButton')) {
                $("#scrollUpButton").removeClass('disabledButton');
                $("#scrollUpButton").addClass('button');
                $("#pgUpButton").removeClass('disabledButton');
                $("#pgUpButton").addClass('button');
            }

            if (spuTableRow == (spuRowCount - 1) && $("#scrollDownButton").hasClass('button')) {
                $("#scrollDownButton").removeClass('button');
                $("#scrollDownButton").addClass('disabledButton');
                $("#pgDnButton").removeClass('button');
                $("#pgDnButton").addClass('disabledButton');
            }
            else if (spuTableRow != (spuRowCount - 1) && $("#scrollDownButton").hasClass('disabledButton')) {
                $("#scrollDownButton").removeClass('disabledButton');
                $("#scrollDownButton").addClass('button');
                $("#pgDnButton").removeClass('disabledButton');
                $("#pgDnButton").addClass('button');
            }

            // Compute the Offset to the Row
            spuRowOffset = -$("#spuTable tr:eq(" + spuTableRow + ")").position().top;

            $('.spuTable').animate({ 'top': spuRowOffset }, 'fast');
        }

        function scrollTableUp(lines) {
            spuTableRow -= lines;
            scrollTableToRow();
        }

        function scrollTableDown(lines) {
            spuTableRow += lines;
            scrollTableToRow();
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
    <h2>
        Diagnostics Logs</h2>
    <table id="spuHeaderTable">
        <tr>
            <th>
                Log
            </th>
            <th colspan="2">
                Actions
            </th>
        </tr>
    </table>
    <div class="tablescroll" id="tableScroller" style="height: 250px; overflow: scroll; overflow-x: hidden;
        position: relative;">
        <table id="spuTable" class="spuTable">
            <% foreach (string logFile in Model.LogFiles)
               {
            %>
            <tr>
                <td style ="width:300px;">
                    <%= logFile %>
                </td>
                <td bgcolor="white">
                    <ul class="button scroll-item">
                        <li class="button">
                            <%= Html.ActionLink("Download", "DownloadLog", new { file = logFile })%>
                        </li>
                    </ul>
                </td>
                <td bgcolor="white">
                    <ul class="button scroll-item">
                        <% if (Model.CanDelete)
                           { %>
                        <li class="button">
                            <%= Html.ActionLink("Delete", "DeleteLog", new { file = logFile })%>
                        </li>
                        <% }
                           else
                           { %>
                        <li class="disabledButton"><a>Delete</a></li>
                        <% } %>
                    </ul>
                </td>
            </tr>
            <% }
            %>
        </table>
    </div>    
    </td>
             
        </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
