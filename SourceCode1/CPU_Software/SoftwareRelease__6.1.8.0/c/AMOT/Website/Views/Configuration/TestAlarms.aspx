<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.TestAlarmsModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

    Test Alarms
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <meta http-equiv="refresh" content="10">
    <!--meta http-equiv="Cache-control" content="no-cache"-->
    <h2>
        Test Alarms
    </h2>
    
    <% if (Model.ModbusStatus != null || Model.SPUNoAction == true)
       { %>
    <p class="error">
        Warning: Test mode has been cancelled due to loss communication to SPU
        </p>
    <% } %>
    <% else if(Model.TestModeExit == true) { %>
    <p class="error">
        Warning: Test mode has been exit due to timeout
        </p>
    <% } %>
    <% if (Model.Status != null)
       { %>   
    <table class="clear">
        <tr class="tall">
            <th align="center" style="width:18%; text-align:center">
                <p>SPU Status<br />(Digital Output 1)</p>                
            </th>
            <td align="center" style="width:8%">
			<ul class="button">
            <% if(Model.Status[0] == DataCollectionSDK.DigitalOutputState.Off) {%>
                <li ><a class="<%= Model.Status[0] %>">ON</a></li>
                <% }
                else {%>
                <li ><a class="<%= Model.Status[0] %>">OFF</a></li>
                <% } %>
			</ul>
            </td>
            <% if (Model.TestModeEnabled)
               { %>
            <td align="center" style="width:8%">
                <ul class="button">
                    <% if (Model.CanToggle)
                       { %>
                    <li class="button"><%= Html.ActionLink("Toggle", "ToggleAlarm", new { alarmNo = 1, currentState = Model.Status[0] })%></li>
                    <% }
                       else
                       {
                       %>
                    <li class="disabledButton"><a>Toggle</a></li>
                    <% } %>
                </ul>                
            </td>
            <td>
                     Click Toggle button to enable or disable healthy state
            </td>
            <% }
               else
               { %>
            <td>
                Toggle unavailable when not in test mode
            </td>
            <% } %>
        </tr>
        <tr class="tall">
            <th align="center" style="width:18%;text-align:center">
                <p>Alarm<br />(Digital Output 2)</p>
            </th>
            <td align="center" style="width:8%">
			<ul class="button">
            <% if(Model.Status[1] == DataCollectionSDK.DigitalOutputState.Off) {%>
                <li ><a class="<%= Model.Status[1] %>">ON</a></li>
                <% }
                else {%>
                <li ><a class="<%= Model.Status[1] %>">OFF</a></li>
                <% } %>
			</ul>
            </td>
            <% if (Model.TestModeEnabled)
               { %>
            <td align="center" style="width:8%">
                <ul class="button">
                    <% if(Model.CanToggle) { %>
                        <li class="button"><%= Html.ActionLink("Toggle", "ToggleAlarm", new { alarmNo = 2, currentState = Model.Status[1] })%></li>
                    <% }
                       else
                       {
                       %>
                    <li class="disabledButton"><a>Toggle</a></li>
                    <% } %>
                        
                    </ul>
            </td>
            <td>
                     Click Toggle button to enable or disable alarm state
            </td>
            <% }
               else
               { %>
            <td>
                Toggle unavailable when not in test mode
            </td>
            <% } %>
        </tr>
        <tr class="tall">
            <th align="center" style="width:18%;text-align:center">                 
                <p>Slowdown<br />(Digital Output 3)</p>
            </th>
            <td align="center" style="width:8%">
            <ul class="button">
                <% if(Model.Status[2] == DataCollectionSDK.DigitalOutputState.Off) {%>
                <li ><a class="<%= Model.Status[2] %>">OFF</a></li>
                <% }
                else {%>
                <li ><a class="<%= Model.Status[2] %>">ON</a></li>
                <% } %>
            </ul>
            </td>
            <% if (Model.TestModeEnabled)
               { %>
            <td align="center" style="width:8%">
                <ul class="button">
                    <% if(Model.CanToggle) { %>
                        <li class="button"><%= Html.ActionLink("Toggle", "ToggleAlarm", new { alarmNo = 3, currentState = Model.Status[2] })%></li>
                    <% }
                       else
                       {
                       %>
                    <li class="disabledButton"><a>Toggle</a></li>
                    <% } %>    
                    </ul>
            </td>
            <td>
                     Click Toggle button to enable or disable slowdown state
            </td>
            <% }
               else
               { %>
            <td>
                Toggle unavailable when not in test mode
            </td>
            <% } %>
        </tr>
    </table>

     <ul class="button">
        <% if (!Model.TestModeEnabled)
           { %>
           <% if (Model.CanEnableTest)
              { %>
                <li class="button"><%= Html.ActionLink("Enable test", "EnableTestMode")%></li>
           <% } 
            else
              { %>
                <li class="disabledButton"><a>Enable Test</a></li>

           <% } %>

        <% }
           else
           { %>
              <% if (Model.CanDisableTest)
              { %>
                <li class="button"><%= Html.ActionLink("Disable test", "DisableTestMode")%></li>
           <% } 
            else
              { %>
                <li class="disabledButton"><a>Disable Test</a></li>
           <% } %>
        <% } %>
    </ul>

    <% } %>

    <!--% if (Model.TestModeEnabled) { Html.ActionLink("Test Alarms", "TestAlarms"); }%-->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
