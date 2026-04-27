<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.SensorsModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Sensors
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script src="<%: Url.Content("~/Scripts/jquery-1.5.1.min.js") %>" type="text/javascript"></script>
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

    <h2>
        Sensor Configuration</h2>

        <% if (Model.Status != null) {%>
    <p class="error"><%=Model.Status%></p>
  <% }%>

    <% if (Model.ModbusWorks)
       { %>
    <% using (Html.BeginForm("SensorsComplete", "WriteFilter", FormMethod.Post))
       { %>
    <table>
        <tr>
            <th>
                Sensor ID
            </th>
            <th>
                Sensor Enabled
            </th>
            <th>
                Mask Alarm
            </th>
        </tr>
        <%
           for (int i = 0; i < Model.Sensors.Count; i++)
           { %>
        <tr>
            <td>
                <%= 
                    string.Format("{0}.{1}", (Model.Sensors[i].SensorId - Model.Sensors[i].SensorId % 2) / 2 + 1, (Model.Sensors[i].SensorId % 2 + 1))
                %>
                <%= Html.HiddenFor(m => m.Sensors[i].SensorId)%>
            </td>
            <td>
                <%= Html.CheckBoxFor(m => m.Sensors[i].Enabled)%>
            </td>
            <td>
                <%= Html.CheckBoxFor(m => m.Sensors[i].AlarmMasked)%>
            </td>
        </tr>
        <% } %>
    </table>
     <% if (Model.CanSave)
       { %>
    <input type="submit" value="Update" class="button" />
        <%} 
        else
        { %>
        <ul class="button"><li class="disabledButton"><a>Update</a></li></ul>
        <% } %>
    
       <% }
    }
       else
       {      %>
    <p class="error">
        <strong>Error:</strong> Could not connect to Modbus server.<br />
        <strong>Details:</strong> "<%= Model.ExceptionDetails %>"</p>
    <% } %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
