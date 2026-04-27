<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.ProgressModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    SPU Settings
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>SPU Settings</h2>

    <p id="message"><%= Model.Message %></p>
    <div id="progressbar" style="width: 500px"></div>
    <p class="error" id="error"></p>

    <ul class="button">
        <li class="button" id="download" style="visibility: hidden"><%= Html.ActionLink("Download","DownloadPreparedFile",new {sessionId = Model.SessionId}) %></li>
    </ul>

    <script type="text/javascript">

        $(document).ready(function (event) {
            getStatus();
        });

        function getStatus() {
            var url = 'GetProgress';
            var completeUrl = 'ProgressComplete';
            var sessionId = '<%= Model.SessionId %>';

            $.get(url, { "sessionId": sessionId }, function (data) {
                $("#progressbar").progressbar({
                    value: data.PercentageProgress
                });

                $("#message").html(data.Message);
                $("#error").html(data.ErrorMessage);

                if (data.Complete) {

                    if (data.FileDownload) {
                        document.getElementById("download").style.visibility = "visible";
                    }
                    else {
                        $(location).attr('href', completeUrl + '?sessionId=' + sessionId);
                    }

                } else {
                    if (data.SessionId != "") {
                        window.setTimeout("getStatus()", 500);
                    }                    
                };
            }, "json");
        }
    </script>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="<%= Url.Content("~/Content/custom-theme/jquery-ui-1.8.20.custom.css") %>" rel="stylesheet" type="text/css" />
    <script src="<%= Url.Content("~/Scripts/jquery-1.5.1.min.js") %>" type="text/javascript"></script>
    <script src="<%= Url.Content("~/Scripts/jquery-ui-1.8.11.min.js") %>" type="text/javascript"></script>
</asp:Content>
