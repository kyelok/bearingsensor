<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.ConfigRecordModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    SPU Settings
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

	<link rel="stylesheet" type="text/css" href="<%: Url.Content("~/Content/jquery.tablescroll.css") %>"/>
    <script src="<%: Url.Content("~/Scripts/jquery-1.5.1.min.js") %>" type="text/javascript"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.scrollTo.js") %>" type="text/javascript"></script>

    <script type="text/javascript">
        var spuScrollPos = 0;

        var spuTableRow = 0;

        var pageUpDwnRows = 10;

        jQuery(document).ready(function ($) {
            var spuTableHeight = $(window).height() - 500;
            spuTableHeight = Math.max(spuTableHeight, 150);

            pageUpDwnRows = Math.floor($('#tableScroller').height() / $("#spuTable tr:eq(1)").outerHeight(true));

            spuTableRow = 0;
            scrollTableToRow();

            $("#tableScroller").height(spuTableHeight);

            $("#spuHeaderTable").width($("#spuTable").width());
            for (var i = 0; i < 8; i++) {
                $("#spuHeaderTable tr:first th:eq(" + i + ")").width($("#spuTable tr:first td:eq(" + i + ")").width());
            }

            // Final header column spans 2 data columns
            var actionColWidth = $("#spuTable tr:first td:eq(8)").width() + $("#spuTable tr:first td:eq(9)").width();
            $("#spuHeaderTable tr:first th:eq(" + i + ")").width(actionColWidth);

            $("#actionsTable").width($("#spuTable").width());

            scrollToFirstRedRow();

            $("#importPanel").hide();

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

            var spuTableHeight = $(window).height() - 500;
            spuTableHeight = Math.max(spuTableHeight, 150);

            pageUpDwnRows = Math.floor($('#tableScroller').height() / $("#spuTable tr:eq(1)").outerHeight(true));

            centerImportPanel();
        });

        function getFile() {
            $('#SpuFile').click();
        }

        function sub(obj) {
            var file = obj.value;
            var fileName = file.split("\\");
            $('#SubmitSpuFile').submit();

            // IE Fix
            if (event.preventDefault) {
                event.preventDefault();
            } else {
                event.returnValue = false;
            }
        }

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

        function scrollToFirstRedRow() {
            var spuRowCount = $("#spuTable tr").length;

            for (var i = 0; i < spuRowCount; i++) {
                if ($("#spuTable tr:eq(" + i + ")").css('backgroundColor') == 'rgb(255, 0, 0)') {
                    spuTableRow = i;
                    scrollTableToRow();

                    break;
                }
            }
        }
    </script>
    <h2>
        SPU Settings</h2>
    <% if (Model.Status != null)
       {%><p class="error">
        <%= Model.Status %></p>
    <% } %>
    <% if (Model.ConfigRecordList.Count > 0)
       {%>
    <table id="spuHeaderTable" >
        <tr>
            <th>
                Reg.
            </th>
            <th>
                Description
            </th>
            <th>
                Value (DB)
            </th>
            <th>
                Value (SPU)
            </th>
            <th>
                Min. Limit
            </th>
            <th>
                Max. Limit
            </th>
            <th>
                Time last set (Web)
            </th>
            <th>
                Time last set (SPU)
            </th>
            <th colspan="2">
                Actions
            </th>
        </tr>
    </table>
    <div class="tablescroll" id="tableScroller" style="height: 250px; overflow: scroll; overflow-x: hidden; position:relative;">
    <table id="spuTable" class="spuTable">

        <% foreach (ConfigurationWebsite.Models.ConfigRecord rec in Model.ConfigRecordList)
            {
                if (rec.Value != rec.SpuValue)
                {%>
        <tr bgcolor="red">
        <%      }
                else
                { %>
        <tr>
        <%      } %>
            <td>
                <%= rec.Register %>
            </td>
            <td>
                <%= rec.Description %>
            </td>
            <td>
                <%= rec.Value %>
            </td>
            <td>
                <% if (rec.SpuValue < 0)
                   {%>
                <%= "Modbus server error" %>
                <% }
                   else
                   { %>
                <%= rec.SpuValue %>
                <%} %>
            </td>
            <td>
                <%= rec.MinLimit %>
            </td>
            <td>
                <%= rec.MaxLimit %>
            </td>
            <td>
                <% if (rec.TimeLastSetWeb > DateTime.MinValue)
                   { %>
                <%= rec.TimeLastSetWeb.ToShortDateString() + " " + rec.TimeLastSetWeb.ToShortTimeString()%>
                <% }
                   else
                   { %>
                Never
                <% } %>
            </td>
            <td>
                <% if (rec.TimeLastSetSpu > DateTime.MinValue)
                   { %>
                <%= rec.TimeLastSetSpu.ToShortDateString() + " " + rec.TimeLastSetSpu.ToShortTimeString()%>
                <% }
                   else
                   { %>
                Never
                <% } %>
            </td>
            <td bgcolor="white">
                <ul class="button scroll-item">
                    <% if (rec.CanEdit)
                       { %>
                    <li class="button">
                        <%= Html.ActionLink("Edit Value", "Edit", new { register = rec.Register } )%>
                    </li>
                    <% }
                       else
                       { %>
                    <li class="disabledButton"><a>Edit Value</a></li>
                    <% } %>
                </ul>
            </td>
            <td bgcolor="white">
                <ul class="button scroll-item">
                    <% if (Model.CanDelete)
                       { %>
                    <li class="button">
                        <%= Html.ActionLink("Delete", "Delete", new { register = rec.Register } )%>
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
    <% } %>
    <table id="actionsTable" width="100%">
        <tr>
            <td style='width: 100%'>
                <ul class="button">
                    <li class="disabledButton"><a style="background-color:Green;line-height:22px">SPU FUNCTIONS</a></li>
                    <% if (Model.CanForceWrite)
                       { %>
                    <li class="button" >
                        <%= Html.ActionLink("SEND ALL DB to SPU", "ForceWriteAll", null, new { Style = "line-height:22px;" })%>
                    </li>
                    <% }
                       else
                       { %>
                    <li class="disabledButton"><a style="line-height:22px">SEND ALL DB to SPU</a></li>
                    <% } %>
                    <% if (Model.CanWriteChanged)
                       { %>
                    <li class="button">
                        <%= Html.ActionLink("SEND DIFF DB to SPU", "WriteChangedRecord", null, new { Style = "line-height:22px;" })%>
                    </li>
                    <% }
                       else
                       { %>
                    <li class="disabledButton"><a style="line-height:22px">SEND DIFF DB to SPU</a></li>
                    <% } %>
                    <% if (Model.CanWriteChanged)
                       { %>
                    <li class="button">
                        <%= Html.ActionLink("READ ALL SPU to DB", "ReadFromSPU", null, new { Style = "line-height:22px;" })%>
                    </li>
                    <% }
                       else
                       { %>
                            <li class="disabledButton"><a style="line-height:22px">READ ALL SPU to DB</a></li>
                    <% } %>
                </ul>
            </td>
           
        </tr>
        <tr>
            <td>
                <ul class="button">
                    <li class="disabledButton"><a style="background-color:Green;line-height:22px">DATABASE FUNCTIONS</a></li>
                    <% if (Model.CanExport)
                       { %>
                    <li class="button">
                        <%= Html.ActionLink("EXPORT DB to FILE", "ExportSpuFile", null, new { Style = "line-height:22px;" })%>
                    </li>
                    <% }
                       else
                       {%>
                    <li class="disabledButton"><a style="line-height:22px">EXPORT DB to FILE</a></li>
                    <% } %>

                <% if (Model.CanImport)
                   { %>
                    <li id="importPanelBut" class="button">
                        <a href="#" style="line-height:22px" onclick="toggleImportPanel(true); return false;">IMPORT FILE to DB</a>
                    </li>
                <% } 
                   else {%>
                   <li class="disabledButton"><a style="line-height:22px">IMPORT FILE to DB</a></li>
                <% } %>                
                    <% if (Model.CanAdd)
                       { %>
                    <li class="button">
                        <%= Html.ActionLink("ADD REGISTER to DB", "Add", null, new { Style = "line-height:22px;" })%>
                    </li>
                    <% }
                       else
                       { %>
                    <li class="disabledButton"><a style="line-height:22px">ADD REGISTER to DB</a></li>
                    <% } %>
                </ul>
            </td>
            
            </td>
        </tr>
    </table>
    <div id="importPanel" class="importPanel">
        <h2>&nbspImport</h2>
        <% using (Html.BeginForm("UploadSpuFile", "SpuConfig", FormMethod.Post, new { id="SubmitSpuFile", enctype = "multipart/form-data" })) %>
        <% { %>
            <div style="position: absolute; left: 10px; top: 80px;"><input type="file" id="SpuFile" name="SpuFile" onchange="sub(this)" style="width: 380px;"/></div> 
        <% } %>
        <ul class="button" style="position: absolute; left: 310px; top: 130px;">
        <li id="Li1" class="button">
            <a href="#" onclick="toggleImportPanel(false); return false;">Cancel</a>
        </li>
        </ul>
    </div>
</asp:Content>
