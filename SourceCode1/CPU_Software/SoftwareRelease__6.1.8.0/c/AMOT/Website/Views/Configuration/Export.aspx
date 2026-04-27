<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.ImportExportModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Exporting File
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Preparing Export File</h2>

<p>Your file is being prepared for download</p>
<div id="progressbar" style="width:500px"></div>
<p class="error" id="error"></p>
<ul class="button">
    <li class="button" id="download" style="visibility: hidden"><%= Html.ActionLink("Download","DownloadPreparedFile",new {exportSessionID = Model.ExportSessionID}) %></li>
</ul>

<script type="text/javascript">

    $(document).ready(function (event) {
        getStatus();
    });

    function getStatus() {
        var url = 'GetExportProgress';
        var sessionID = '<%= Model.ExportSessionID %>';

        $.get(url, { "exportSessionID": sessionID }, function (data) {
            $("#progressbar").progressbar({
                value: data.progress
            });

            if (data.complete) {
                if (data.failed) {
                    $('#error').text(data.error);
                } else {
                    document.getElementById("download").style.visibility = "visible";
                }
            } else {
                window.setTimeout("getStatus()", 500);
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
