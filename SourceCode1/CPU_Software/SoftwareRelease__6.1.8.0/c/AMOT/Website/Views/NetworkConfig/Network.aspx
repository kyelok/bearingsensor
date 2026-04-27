<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.IpDataModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Network
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Network Settings</h2>

    <% using (Html.BeginForm("SelectAnotherNic", "NetworkConfig", FormMethod.Post)) %>
    <% { %>
    <h3>
        Select network interface to configure</h3>
    <p>
        <%= Html.DropDownList("NetworkInterface", ViewBag.Nics as SelectList, new { Onchange = "this.form.submit()", })%></p>
    <% } %>

    <% using (Html.BeginForm("UpdateNic", "NetworkConfig", FormMethod.Post)) %>
    <% { %>
    <%= Html.HiddenFor(m => m.NetworkInterface)%><!-- Hidden field -->
    <h3>
        Configure IP addresses using DHCP or manually</h3>
    <table >
        <tr >
            <td >
                <script type="text/javascript">
                    $(document).ready(function () {
                         //Allow for upper-case True/False
                         var True = true;
                         var False = false;

                         if (<%= Model.UsesDHCP %>)
                         {
                            $(':text').attr('disabled','disabled');
                         }

                         var textBoxes = $("input:radio");

                         textBoxes.each(function () {
                            if ("<%= Model.CanSave %>" == "False") {
                                $(this).attr('readonly',true);
                                $(this).attr('disabled',true);
                            }
                            });
                    });
                </script>
                <%= Html.RadioButton("ipTypeRadio", "dhcp", Model.UsesDHCP, new { OnClick = "$(':text').attr('disabled','disabled');" })%>
            </td>
            <td >
                <label id="dhcpLabel">
                    Obtain an IP Address automatically (using DHCP)</label>
            </td>
        </tr>
        <tr >
            <td >
                <%= Html.RadioButton("ipTypeRadio", "static", !Model.UsesDHCP, new { OnClick = "$(\":text\").removeAttr('disabled','disabled');" })%>
            </td>
            <td >
                <label id="staticIpLabel">
                    Manually configure an IP Address (use a static IP)</label>
            </td>
        </tr>
    </table>
    <h3>
        IP Addresses and details</h3>
    <table >
        <tr >
            <td >
                <label>
                    I.P. Address</label>
            </td>
            <td >
                <%= Html.TextBoxFor(m => m.IpAddress, new { Onfocus = "TextInputFocus('IpAddress', true)" })%>
            </td>
            <td >
                <%= Html.ValidationMessageFor(m => m.IpAddress) %>
            </td>
        </tr>
        <tr >
            <td >
                <label>
                    Netmask</label>
            </td>
            <td >
                <%= Html.TextBoxFor(m => m.NetMask, new { Onfocus = "TextInputFocus('NetMask', true)" })%>
            </td>
            <td >
                <%= Html.ValidationMessageFor(m => m.NetMask) %>
            </td>
        </tr>
        <tr >
            <td >
                <label>
                    DNS</label>
            </td>
            <td >
                <%= Html.TextBoxFor(m => m.Dns0, new { Onfocus = "TextInputFocus('Dns0', true)" })%>
            </td>
            <td >
                <%= Html.ValidationMessageFor(m => m.Dns0) %>
            </td>
        </tr>
        <tr >
            <td >
            </td>
            <td >
                <%= Html.TextBoxFor(m => m.Dns1, new { Onfocus = "TextInputFocus('Dns1', true)" })%>
            </td>
            <td >
                <%= Html.ValidationMessageFor(m => m.Dns1) %>
            </td>
        </tr>
        <tr >
            <td >
                <label>
                    Gateway</label>
            </td>
            <td >
                <%= Html.TextBoxFor(m => m.GateWay, new { Onfocus = "TextInputFocus('GateWay', true)" })%>
            </td>
            <td >
                <%= Html.ValidationMessageFor(m => m.GateWay) %>
            </td>
        </tr>
    </table>
        <% if(Model.CanSave) { %>
            <input type="submit" value="Submit" class="button" />
            <% }
                else
                { %>
                <ul class="button"><li class="disabledButton"><a>Submit</a></li></ul>
                <% } %>
    <% } %>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <% Html.RenderPartial("OnScreenKeyboard"); %>
</asp:Content>
