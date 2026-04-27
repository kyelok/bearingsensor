<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.SPUUpdateProgressModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    SPU Firmware Update Progress
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>
        SPU Firmware Update Progress</h2>
    <table>
        <% int i = 0;
           foreach (string stage in Model.UpdateStages)
           { %>
        <tr>
            <td>
                <%= stage %>
            </td>
            <td id="updatestage<%=i %>">
            </td>
        </tr>
        <% i++;
           }%>
    </table>
    <div id="processStart" style="visibility: visible">
        <ul class="button">
            <li class="button"><a href="#" id="startProcess">
                <% if (Model.UpdateStarted)
                   { %>
                Update Started, Check Progress
                <% }
                   else
                   { %>
                Click to Start Update
                <% } %>
            </a></li>
        </ul>
    </div>
    <div id="processFail" style="visibility: hidden">
        <ul class="button">
            <li class="button"><a href="SPUFirmwareUpdate">Click to Retry</a> </li>
            <% if (Model.CanReboot)
            { %>
            <li class="button"><a href="RestartServer">Restart Server</a> </li>
            <% } %>
        </ul>
    </div>
    <div id="processEnd" style="visibility: hidden">
        <ul class="button">
            <li class="button"><a href="#" id="restartPC">Restart</a> </li>
        </ul>
    </div>
    <script type="text/javascript">

        $(document).ready(function (event) {

            $('#startProcess').click(function () {
                $.post("StartUpdate", function () {
                    startDiv = document.getElementById("processStart");
                    startDiv.style.visibility = "hidden";
                    getStatus();
                });
                event.preventDefault;
            });
            $('#restartPC').click(function () {
                $.post("RestartServer", function () {
                    $('#restartPC').text("Restarting");
                });
                event.preventDefault;
            });
        });

        function getStatus() {
            var url = 'GetUpdateProgress';
            $.get(url, function (data) {

                for (var i = 0; i < data.results.length; i++) {
                    $('#updatestage' + i).text(data.results[i]);
                    $('#updatestage' + i).removeClass();
                    if (data.results[i].indexOf("FAILED") != -1) {
                        $('#updatestage' + i).addClass("error");
                    } else if (data.results[i].indexOf("DONE") != -1) {
                        $('#updatestage' + i).addClass("success");
                    }
                }

                if (data.running) {
                    window.setTimeout("getStatus()", 500);
                }
                else {
                    if (data.failed) {
                        endDiv = document.getElementById("processFail");
                    } else {
                        endDiv = document.getElementById("processEnd");
                    }
                    endDiv.style.visibility = "visible";
                };
            }, "json");
        }
    
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
