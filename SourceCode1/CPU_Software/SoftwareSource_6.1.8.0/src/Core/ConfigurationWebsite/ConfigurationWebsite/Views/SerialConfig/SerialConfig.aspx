<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.SerialConfigModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Serial
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Serial Configuration</h2>
    <% if (Model.ConfigModified)
   { %>
    <p class="error">
        Serial configuration has been modified.</p>
    <p class="error">
        Please restart server for changes to take effect.</p>
    <% } %>
    <% using (Html.BeginForm("SerialConfigComplete", "SerialConfig", FormMethod.Post))
   { %>
    <table>
        <tr>
            <td>
            </td>
            <th>
                SPU Port
            </th>
            <th>
                External port
            </th>
        </tr>
        <tr>
            <td class="th">
                Port
            </td>
            <% if (Request.IsAuthenticated)
           { %>
            <td>
                <%= Html.DropDownList("SpuSerial.PortName", ViewBag.PortNames as SelectList)%>
            </td>
            <td>
                <%= Html.DropDownList("ExtSerial.PortName", ViewBag.PortNames as SelectList)%>
            </td>
            <% }
           else
           { %>
            <td>
                <%= Model.SpuSerial.PortName %>
            </td>
            <td>
                <%= Model.ExtSerial.PortName %>
            </td>
            <% } %>
        </tr>
        <tr>
            <td class="th">
                BAUD rate
            </td>
            <% if (Request.IsAuthenticated)
           { %>
            <td>
                <%= Html.DropDownList("SpuSerial.BaudRate", ViewBag.BaudRates as SelectList)%>
            </td>
            <td>
                <%= Html.DropDownList("ExtSerial.BaudRate", ViewBag.BaudRates as SelectList)%>
            </td>
            <% }
           else
           { %>
            <td>
                <%= Model.SpuSerial.BaudRate%>
            </td>
            <td>
                <%= Model.ExtSerial.BaudRate%>
            </td>
            <% } %>
        </tr>
        <tr>
            <td class="th">
                Parity
            </td>
            <td>
                <%if(Request.IsAuthenticated) { %>
                <%= Html.RadioButtonFor(m => m.SpuSerial.Parity, System.IO.Ports.Parity.None)%>None<br />
                <%= Html.RadioButtonFor(m => m.SpuSerial.Parity, System.IO.Ports.Parity.Even)%>Even<br />
                <%= Html.RadioButtonFor(m => m.SpuSerial.Parity, System.IO.Ports.Parity.Odd)%>Odd<br />
                <%= Html.RadioButtonFor(m => m.SpuSerial.Parity, System.IO.Ports.Parity.Mark)%>Mark<br />
                <%= Html.RadioButtonFor(m => m.SpuSerial.Parity, System.IO.Ports.Parity.Space)%>Space<br />
                <%= Html.ValidationMessageFor(m => m.SpuSerial.Parity) %>
                <% } else { %>
                <%= Model.SpuSerial.Parity %>
                <% } %>
            </td>
            <td>
                <%if(Request.IsAuthenticated) { %>
                <%= Html.RadioButtonFor(m => m.ExtSerial.Parity, System.IO.Ports.Parity.None)%>None<br />
                <%= Html.RadioButtonFor(m => m.ExtSerial.Parity, System.IO.Ports.Parity.Even)%>Even<br />
                <%= Html.RadioButtonFor(m => m.ExtSerial.Parity, System.IO.Ports.Parity.Odd)%>Odd<br />
                <%= Html.RadioButtonFor(m => m.ExtSerial.Parity, System.IO.Ports.Parity.Mark)%>Mark<br />
                <%= Html.RadioButtonFor(m => m.ExtSerial.Parity, System.IO.Ports.Parity.Space)%>Space<br />
                <%= Html.ValidationMessageFor(m => m.ExtSerial.Parity) %>
                <% } else { %>
                <%= Model.ExtSerial.Parity %>
                <% } %>
            </td>
        </tr>
        <tr>
            <td class="th">
                Stop Bits
            </td>
            <td>
                <% if (Request.IsAuthenticated)
               { %>
                <%= Html.RadioButtonFor(m => m.SpuSerial.StopBits, System.IO.Ports.StopBits.One)%>1<br />
                <%= Html.RadioButtonFor(m => m.SpuSerial.StopBits, System.IO.Ports.StopBits.OnePointFive)%>1.5<br />
                <%= Html.RadioButtonFor(m => m.SpuSerial.StopBits, System.IO.Ports.StopBits.Two)%>2<br />
                <%= Html.ValidationMessageFor(m => m.SpuSerial.StopBits)%>
                <% }
               else
               {  %>
               <% if (Model.SpuSerial.StopBits == System.IO.Ports.StopBits.One)
                  { %> 1 <% }
                  else if (Model.SpuSerial.StopBits == System.IO.Ports.StopBits.OnePointFive)
                  { %> 1.5 <% }
                  else if (Model.SpuSerial.StopBits == System.IO.Ports.StopBits.Two)
                  { %> 2 <% } %>
               
            <% } %>
            </td>
            <td>
                <% if (Request.IsAuthenticated)
               { %>
                <%= Html.RadioButtonFor(m => m.ExtSerial.StopBits, System.IO.Ports.StopBits.One)%>1<br />
                <%= Html.RadioButtonFor(m => m.ExtSerial.StopBits, System.IO.Ports.StopBits.OnePointFive)%>1.5<br />
                <%= Html.RadioButtonFor(m => m.ExtSerial.StopBits, System.IO.Ports.StopBits.Two)%>2<br />
                <%= Html.ValidationMessageFor(m => m.ExtSerial.StopBits)%>
                <% }
               else
               {  %>
               <% if (Model.ExtSerial.StopBits == System.IO.Ports.StopBits.One)
                  { %> 1 <% }
                  else if (Model.ExtSerial.StopBits == System.IO.Ports.StopBits.OnePointFive)
                  { %> 1.5 <% }
                  else if (Model.ExtSerial.StopBits == System.IO.Ports.StopBits.Two)
                  { %> 2 <% } %>
               
            <% } %>
            </td>
        </tr>
        <tr>
            <td class="th">
                Data Bits
            </td>
            <td>
                <% if (Request.IsAuthenticated)
                   { %>
                <%= Html.RadioButtonFor(m => m.SpuSerial.DataBits, 5)%>5<br />
                <%= Html.RadioButtonFor(m => m.SpuSerial.DataBits, 6)%>6<br />
                <%= Html.RadioButtonFor(m => m.SpuSerial.DataBits, 7)%>7<br />
                <%= Html.RadioButtonFor(m => m.SpuSerial.DataBits, 8)%>8<br />
                <%= Html.ValidationMessageFor(m => m.SpuSerial.DataBits)%>
                <% }
                   else
                   { %>
                <%= Model.SpuSerial.DataBits%>
                <% }%>
            </td>
            <td>
           <% if (Request.IsAuthenticated)
           { %>
                <%= Html.RadioButtonFor(m => m.ExtSerial.DataBits, 5) %>5<br />
                <%= Html.RadioButtonFor(m => m.ExtSerial.DataBits, 6)%>6<br />
                <%= Html.RadioButtonFor(m => m.ExtSerial.DataBits, 7)%>7<br />
                <%= Html.RadioButtonFor(m => m.ExtSerial.DataBits, 8)%>8<br />
                <%= Html.ValidationMessageFor(m => m.ExtSerial.DataBits)%>
            <% } else { %>
                <%= Model.ExtSerial.DataBits %>
                
            <% } %>
            </td>
        </tr>
    </table>
    
    <ul class="button">
        <% if (Model.CanSave)
           { %>
        <li class="button">
            <input type="submit" value="Submit" class="button" /></li>
        <% }
           else
           { %>
          <li class="disabledButton"><a>Submit</a></li>
          <% }
              %>
        <% if (Model.ConfigModified && Model.CanReboot)
           { %>
        <li class="button"><%= Html.ActionLink("Restart Server", "RestartServer")%></li>
        <% } %>
        <% else { %>
        <li class="disabledButton"><a>Restart Server</a></li>
        <% } %>

    </ul>
   
    <% } %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
