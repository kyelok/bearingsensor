<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.ImportExportModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Importing File
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Importing Content From File</h2>
<p>Your file has been uploaded.</p>
<p>The content of the file is now being checked and imported.</p>
<div id="progressbar" style="width:500px"></div>
<p class="error" id="result"></p>

<script type="text/javascript">

    $(document).ready(function (event) {
        getStatus();
    });

    function getStatus() {
        var url = 'GetImportProgress';
        var sessionID = '<%= Model.ExportSessionID %>';

        $.get(url, { "importSessionID": sessionID }, function (data) {
            $("#progressbar").progressbar({
                value: data.progress
            });

            if (data.complete) {
                if (data.failed) {
                    $('#result').text(data.error);
                } else {
                    $('#result').removeClass();
                    $('#result').addClass("success");
                    $('#result').text("DONE");
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
