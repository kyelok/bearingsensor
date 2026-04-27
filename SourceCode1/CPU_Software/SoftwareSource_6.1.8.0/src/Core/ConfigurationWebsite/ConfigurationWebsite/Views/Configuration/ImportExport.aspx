<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.StatusModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Import/Export
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

        function toggleImportPanel(v, n) {
            // Toggles the div containing the Import File dialog
            if (v) {
                // Make sure all other import dialogs are closed
                toggleImportPanel(false, n);
                $("#importPanel" + n).show();
            } else {
                $("#importPanel1").hide();
                $("#importPanel2").hide();
                $("#importPanel3").hide();
                $("#importPanel4").hide();
                $("#importPanel5").hide();
                $("#importPanel6").hide();
            }
        }

        function centerImportPanel() {
            // Center the Import Panel on screen
            var iP_top = $(window).height() / 2 - $("#importPanel1").height() / 2;
            var iP_left = $(window).width() / 2 - $("#importPanel1").width() / 2;

            for (var i = 0; i < 6; i++) {
                $("#importPanel" + (i + 1)).css('top', iP_top + 'px');
                $("#importPanel" + (i + 1)).css('left', iP_left + 'px');
            }
        }
    </script>

    <h2>Import/Export Settings</h2>
    <% if (Model != null && Model.Message != null)
       { %>
    <p class="error">
        <%= Model.Message %></p>
    <% } %>

    <table cellspacing="10">
        <tr>
            <td style="width: 250px;">
                <h3>System Settings</h3>    
                <ul class="button">
                    <li class="button"><%= Html.ActionLink("Export", "ExportSystemSettings")%></li>
                </ul>    
                <ul class="button">
                    <li id="importPanelBut" class="button">
                        <a href="#" onclick="toggleImportPanel(true, 1); return false;">Import</a>
                    </li>
                </ul>
            </td>
            <td>
                <h3>Speed Compensation</h3>
                <ul class="button">
                    <li class="button"><%= Html.ActionLink("Export", "ExportSpeedComp") %></li>
                </ul>    
                <ul class="button">
                    <li id="Li7" class="button">
                        <a href="#" onclick="toggleImportPanel(true, 2); return false;">Import</a>
                    </li>
                </ul>
            </td>
        </tr>

        <tr>
            <td style="width: 250px;">
                <h3>Offsets (A)</h3>
                <ul class="button">
                    <li class="button"><%= Html.ActionLink("Export", "ExportOffsetsA")%></li>
                </ul>    
                <ul class="button">
                    <li id="Li8" class="button">
                        <a href="#" onclick="toggleImportPanel(true, 3); return false;">Import</a>
                    </li>
                </ul>
            </td>
            <td>
                <h3>Speed Tables (Accumulated Learnt Values)</h3>
                <ul class="button">
                    <li class="button"><%= Html.ActionLink("Export", "ExportSpeedTableALV") %></li>
                </ul>    
                <ul class="button">
                    <li id="Li9" class="button">
                        <a href="#" onclick="toggleImportPanel(true, 4); return false;">Import</a>
                    </li>
                </ul>
            </td>
        </tr>

        <tr>
            <td style="width: 250px;">
                <h3>Offsets (B)</h3>
                <ul class="button">
                    <li class="button"><%= Html.ActionLink("Export", "ExportOffsetsB") %></li>
                </ul>    
                <ul class="button">
                    <li id="Li10" class="button">
                        <a href="#" onclick="toggleImportPanel(true, 5); return false;">Import</a>
                    </li>
                </ul>
            </td>
            <td>
                <h3>Speed Tables (No. Points Collected)</h3>
                <ul class="button">
                    <li class="button"><%= Html.ActionLink("Export", "ExportSpeedTableNPC") %></li>
                </ul>
                    
                <ul class="button">
                    <li id="Li11" class="button">
                        <a href="#" onclick="toggleImportPanel(true, 6); return false;">Import</a>
                    </li>
                </ul>
            </td>
        </tr>
    </table>

    

    <div id="importPanel1" class="importPanel">
        <h2>&nbspImport System Settings</h2>
        <% using (Html.BeginForm("ImportSystemSettings", "Configuration", FormMethod.Post, new { enctype = "multipart/form-data" })) %>
        <% { %>
            <div style="position: absolute; left: 10px; top: 80px;"><input type="file" id="File6" name="SystemSettingsFile" onchange="this.form.submit()" style="width: 380px;"/></div> 
        <% } %>
        <ul class="button" style="position: absolute; left: 310px; top: 130px;">
        <li id="Li1" class="button">
            <a href="#" onclick="toggleImportPanel(false); return false;">Cancel</a>
        </li>
        </ul>
    </div>
    
    <div id="importPanel2" class="importPanel">
        <h2>&nbspImport Speed Compensation</h2>
        <% using (Html.BeginForm("ImportSpeedComp", "Configuration", FormMethod.Post, new { enctype = "multipart/form-data" })) %>
        <% { %>
            <div style="position: absolute; left: 10px; top: 80px;"><input type="file" id="File1" name="SpeedCompFile" onchange="this.form.submit()" style="width: 380px;" /></div> 
        <% } %>
        <ul class="button" style="position: absolute; left: 310px; top: 130px;">
        <li id="Li2" class="button">
            <a href="#" onclick="toggleImportPanel(false); return false;">Cancel</a>
        </li>
        </ul>
    </div>
    
    <div id="importPanel3" class="importPanel">
        <h2>&nbspImport Offsets (A)</h2>
        <% using (Html.BeginForm("ImportOffsetsA", "Configuration", FormMethod.Post, new { enctype = "multipart/form-data" })) %>
        <% { %>
            <div style="position: absolute; left: 10px; top: 80px;"><input type="file" id="File2" name="OffsetsFileA" onchange="this.form.submit()" style="width: 380px;" /></div> 
        <% } %>
        <ul class="button" style="position: absolute; left: 310px; top: 130px;">
        <li id="Li3" class="button">
            <a href="#" onclick="toggleImportPanel(false); return false;">Cancel</a>
        </li>
        </ul>
    </div>
    
    <div id="importPanel4" class="importPanel">
        <h2>&nbspImport Speed Tables</h2>
        <% using (Html.BeginForm("ImportSpeedTableALV", "Configuration", FormMethod.Post, new { enctype = "multipart/form-data" })) %>
        <% { %>
            <div style="position: absolute; left: 10px; top: 80px;"><input type="file" id="File3" name="SpeedTableAlvFile" onchange="this.form.submit()" style="width: 380px;" /></div> 
        <% } %>
        <ul class="button" style="position: absolute; left: 310px; top: 130px;">
        <li id="Li4" class="button">
            <a href="#" onclick="toggleImportPanel(false); return false;">Cancel</a>
        </li>
        </ul>
    </div>
    
    <div id="importPanel5" class="importPanel">
        <h2>&nbspImport Offsets (B)</h2>
        <% using (Html.BeginForm("ImportOffsetsB", "Configuration", FormMethod.Post, new { enctype = "multipart/form-data" })) %>
        <% { %>
            <div style="position: absolute; left: 10px; top: 80px;"><input type="file" id="File4" name="OffsetsFileB" onchange="this.form.submit()" style="width: 380px;" /></div> 
        <% } %>
        <ul class="button" style="position: absolute; left: 310px; top: 130px;">
        <li id="Li5" class="button">
            <a href="#" onclick="toggleImportPanel(false); return false;">Cancel</a>
        </li>
        </ul>
    </div>
    
    <div id="importPanel6" class="importPanel">
        <h2>&nbspImport Speed Tables</h2>
        <% using (Html.BeginForm("ImportSpeedTableNPC", "Configuration", FormMethod.Post, new { enctype = "multipart/form-data" })) %>
        <% { %>
            <div style="position: absolute; left: 10px; top: 80px;"><input type="file" id="File5" name="SpeedTableNpcFile" onchange="this.form.submit()" style="width: 380px;" /></div> 
        <% } %>
        <ul class="button" style="position: absolute; left: 310px; top: 130px;">
        <li id="Li6" class="button">
            <a href="#" onclick="toggleImportPanel(false); return false;">Cancel</a>
        </li>
        </ul>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
