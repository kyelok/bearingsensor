<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Reboot
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Restarting XTS-W Server...</h2>

<div id="timer"></div>

<script type="text/javascript">

    var time = 100;

    $(document).ready(getStatus());

    function getStatus() {
        $('#timer').text(time);
        window.setTimeout("getStatus()", 1000);
        time = time - 1;

        if (time <= 0) {
            time = 0;
            window.location = "/config"
        }
    }
    
    </script>

</asp:Content>
