<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <%: ViewBag.Message %></h2>
    <table>
        <% int i = 0;
           Dictionary<string, string> installedPackages = (Dictionary<string, string>)ViewData["Installed"];
           foreach (KeyValuePair<string,string> item in installedPackages)
           { %>
        <tr>
            <td>
                <%=System.IO.Path.GetFileName(item.Key) %>
            </td>
            <td id="installstate<%=i %>" class="<%=item.Value%>">
                <%=item.Value %>
            </td>
        </tr>
        <% i++;
           }%>
    </table>
    
    <div id="progress"></div><p>

    <ul class="button">

    <% if ((bool)ViewData["Running"] == false && (installedPackages.Count() > 0))
       { %>
    <li class="button" id="updateButton"><a href="#" id="startProcess">Update</a></li>
    <li class="button" id="deleteUpdatesButton"><%= Html.ActionLink("Delete", "DeleteUpdates")%> </li>
        <% }
       else
       {
           if ((bool)ViewData["Reboot"] == true || (ViewData["Packages"] == null) || (( (List<string>)ViewData["Packages"]).Count() <= 0) )
           {%>
    <li class="button"><%=Html.ActionLink("Restart", "Reboot")%></li>
    <%}
       }
    %>

    </ul>
    
    <script type="text/javascript">

        $(document).ready(function (event) {
            $('#startProcess').click(function () {
                $.post("<%=Url.Content("~/Home/StartUpdateProcess")%>", function () {
                    $('#statusBorder').show();
                    getStatus();
                });
                event.preventDefault;
            });
        });

        function getStatus() {
            var url = '<%=Url.Content("~/Home/GetUpdateProgress")%>';
            $.get(url, function (data) {

                for (var i = 0; i < data.updateStates.length; i++) {
                    $('#installstate' + i).text(data.updateStates[i]);
                    $('#installstate' + i).removeClass();
                    $('#installstate' + i).addClass(data.updateStates[i]);
                }

                document.getElementById("progress").innerHTML = "Install progress " + data.percentageComplete + "%";
                document.getElementById("updateButton").className = "disabledButton";
                document.getElementById("deleteUpdatesButton").className = "disabledButton";

                if (data.percentageComplete < 100) {
                    window.setTimeout("getStatus()", 1000);
                }
                else {
                    location.reload(true);
                };
            }, "json");
        }
    
    </script>
</asp:Content>
