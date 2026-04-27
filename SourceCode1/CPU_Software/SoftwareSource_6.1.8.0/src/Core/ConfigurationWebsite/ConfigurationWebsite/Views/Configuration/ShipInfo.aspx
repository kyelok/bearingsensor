<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.ShipInfo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Ship Information
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
   

<h2>Ship Information</h2>

<h3>Enter Ship Information details below</h3>
  <% using (Html.BeginForm("ShipInfoComplete", "Configuration", FormMethod.Post)) %>
    <% { %>
        <table>                        
            <tr>                
                <td>
                    <% if (Model.CanSave)
              { %>
           <input type="submit" class="button" value="Save" />
           <%}
              else
              {  %>
                 <ul class="button"><li class="disabledButton"><a>Save</a></li></ul>
              <% } %>
                </td>
                <td>                
                <ul class="button">
                    <li class="button"><%= Html.ActionLink("Register", "ExportSerialNumberToPC") %></li>
                </ul>                                    
                </td>
            </tr>
            <tr>
                <td><h3>XTS-W2 SN:</h3></td>
                <td style ="width:100px;"><%= Html.TextBoxFor(m => m.SerialNumber, new { Onfocus = "TextInputFocus('SerialNumber', false)"})%></td>
                <td>
                <%= Html.ValidationMessageFor(m => m.SerialNumber) %>                    
            </td>
            </tr>
            <tr>
                <td>Vessel Name</td>
                <td style ="width:500px;"><%= Html.TextBoxFor(m => m.VesselName, new { Onfocus = "TextInputFocus('VesselName', false)",   @class="wide"})%></td>
                <td>
                <%= Html.ValidationMessageFor(m => m.VesselName) %>
            </td>
            </tr>
            <tr>
                <td>IMO Number</td>
                <td style ="width:500px;"><%= Html.TextBoxFor(m => m.ImoNo, new { Onfocus = "TextInputFocus('ImoNo', false)", @class="wide"})%></td>
                <td >
                <%= Html.ValidationMessageFor(m => m.ImoNo) %>
            </td>
            </tr>
            <tr>
                <td>Classification Society</td>
                <td style ="width:500px;"><%= Html.TextBoxFor(m => m.ClassificationSociety, new { Onfocus = "TextInputFocus('ClassificationSociety', false)", @class="wide" })%></td>
                <td >
                <%= Html.ValidationMessageFor(m => m.ClassificationSociety) %>
            </td>
            </tr>
            <tr>
                <td>Class Register Number</td>
                <td style ="width:500px;"><%= Html.TextBoxFor(m => m.ClassRegisterNo, new { Onfocus = "TextInputFocus('ClassRegisterNo', false)", @class="wide" })%></td>
                <td >
                <%= Html.ValidationMessageFor(m => m.ClassRegisterNo) %>
            </td>
            </tr>
            <tr>
                <td>Component</td>
                <td style ="width:500px;"><%= Html.TextBoxFor(m => m.Component, new { Onfocus = "TextInputFocus('Component', false)", @class="wide" })%></td>
                <td >
                <%= Html.ValidationMessageFor(m => m.Component) %>
            </td>
            </tr>
            <tr>
                <td>Engine Licenser</td>
                <td style ="width:500px;"><%= Html.TextBoxFor(m => m.EngineLicenser, new { Onfocus = "TextInputFocus('EngineLicenser', false)", @class="wide" })%></td>
                <td >
                <%= Html.ValidationMessageFor(m => m.EngineLicenser) %>
            </td>
            </tr>
            <tr>
                <td>Engine Maker</td>
                <td style ="width:500px;"><%= Html.TextBoxFor(m => m.EngineMaker, new { Onfocus = "TextInputFocus('EngineMaker', false)", @class="wide" })%></td>
                <td >
                <%= Html.ValidationMessageFor(m => m.EngineMaker) %>
            </td>
            </tr>
            <tr>
                <td>Engine Type</td>
                <td style ="width:500px;"><%= Html.TextBoxFor(m => m.EngineType, new { Onfocus = "TextInputFocus('EngineType', false)", @class="wide" })%></td>
                <td >
                <%= Html.ValidationMessageFor(m => m.EngineType) %>
            </td>
            </tr>
            <tr>
                <td>Engine Serial Number</td>
                <td style ="width:500px;"><%= Html.TextBoxFor(m => m.EngineSerialNumber, new { Onfocus = "TextInputFocus('EngineSerialNumber', false)", @class="wide" })%></td>
                <td >
                <%= Html.ValidationMessageFor(m => m.EngineSerialNumber) %>
            </td>
            </tr>
           </table>
           

      <% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
