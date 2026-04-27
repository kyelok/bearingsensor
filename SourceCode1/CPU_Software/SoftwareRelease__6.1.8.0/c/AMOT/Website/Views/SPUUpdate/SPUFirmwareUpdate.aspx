<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ConfigurationWebsite.Models.SPUUpdateModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    SPU Firmware Update
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>SPU Firmware Update</h2>
<% if (Model.ErrorMessage != null)
   { %>
        <p class="error">Error: <%= Model.ErrorMessage%></p>
        <p class="error">Progress of currently running update can be viewed <a href="SPUFirmwareUpdateProgress">here</a></p>
<% } %>

<% if (Model.VersionInfo != null)
   { %>
        <p>Current version of firmware on SPU(s) is: <%= Model.VersionInfo%></p>
<% } %>

<p>Select an .fr2 file to use to update the SPU firmware.</p><p> Once the file is selected it will be automatically uploaded
and the firmware update process will begin.</p>

<% using (Html.BeginForm("SPUFirmwareUpdateComplete", "SPUUpdate", FormMethod.Post, new { enctype = "multipart/form-data" })) %>
    <% { %>
        <p class="clear">
            Upload Firmware File (.fr2): 
            <input type="file" id="updateFile" name="updateFile" onchange="this.form.submit()" />
        </p>
    <% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
