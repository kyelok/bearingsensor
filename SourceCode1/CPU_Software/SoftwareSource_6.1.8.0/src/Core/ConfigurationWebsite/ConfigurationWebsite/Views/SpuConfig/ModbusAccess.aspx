<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.ModbusAccessModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Direct Modbus Access
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Direct Modbus Access</h2>

    <% if (Model != null && Model.Error != null)
       { %>
    <p class="error"><%= Model.Error%></p>
    <% } %>

    <table><tr>
        <td valign="top">
            <h3>Read data from modbus registers(s)</h3>
            <% using(Html.BeginForm("ModbusAccessRead", "SpuConfig")) 
               { %>
            <table>
                <tr>
                    <td>
                        Start Register
                    </td>
                    <td>
                        <%= Html.TextBoxFor(m => m.StartReg, new { Onfocus = "TextInputFocus('StartReg', true)" })%> <%= Html.ValidationMessageFor(m => m.StartReg) %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Number of registers to read
                    </td>
                    <td>
                        <%= Html.TextBoxFor(m => m.NoOfRegistersToRead, new { Onfocus = "TextInputFocus('NoOfRegistersToRead', true)" })%> <%= Html.ValidationMessageFor(m => m.NoOfRegistersToRead) %>
                    </td>
                </tr>
            </table>
            <% if (Model.CanRead)
               { %>
            <input type="submit" value="Read" class="button" />
            <% }
               else
               { %>
            <ul class="button"><li class="disabledButton"><a>Read</a></li></ul>
            <% } %>
            <% } //End form %>

    
            <% if (Model != null && Model.Values != null)
               { %>
                <table class="clear" style="min-width:100px">
                    <tr>
                        <th>Register</th><th>Value</th>
                    </tr>
                <% for(int i = 0; i < Model.Values.Length; i++)
                    { %>
                        <tr>
                            <td><%= (Model.StartReg + i) %></td><td>
                            <% 
                        if (((Model.StartReg + i) >= 3 && (Model.StartReg + i) <= 116) ||
                            ((Model.StartReg + i) >= 256 && (Model.StartReg + i) <= 283) ||
                            ((Model.StartReg + i) >= 468 && (Model.StartReg + i) <= 472) ||
                            ((Model.StartReg + i) >= 1094 && (Model.StartReg + i) <= 1121) ||
                            ((Model.StartReg + i) >= 4650 && (Model.StartReg + i) <= 4761) ||
                            ((Model.StartReg + i) >= 4764 && (Model.StartReg + i) <= 4779))
                             {%>
                                 <%= (short)Model.Values[i]%>
                             <%} 
                             else 
                             {%>
                                 <%= Model.Values[i]%>
                             <%} %></td>
                                                    </tr>
                                            <% } %>
                </table>
            <% } %>
        </td>
        <td valign="top">
            <h3 class="clear">Write data to modbus register</h3>

            <% using (Html.BeginForm("ModbusAccessWrite", "SpuConfig"))
               { %>
            <table>
                <tr>
                    <td>
                        Register
                    </td>
                    <td>
                        <%= Html.TextBoxFor(m => m.WriteReg, new { Value = String.Empty, Onfocus = "TextInputFocus('WriteReg', true)" })%> <%= Html.ValidationMessageFor(m => m.WriteReg) %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Value
                    </td>
                    <td>
                        <%= Html.TextBoxFor(m => m.WriteValue, new { Value = String.Empty, Onfocus = "TextInputFocus('WriteValue', true)" })%> <%= Html.ValidationMessageFor(m => m.WriteValue) %>
                    </td>
                </tr>
            </table>
            <% if (Model.CanWrite)
               { %>
            <input type="submit" value="Write" class="button" />
            <% } 
               else
               { %>
            <ul class="button"><li class="disabledButton"><a>Write</a></li></ul>
            <% } %>
            <% } %>
        </td>
    </tr></table>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <% Html.RenderPartial("OnScreenKeyboard"); %>
</asp:Content>
