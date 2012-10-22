<%@ Page Title="Manage Photo Album" Language="C#" MasterPageFile="~/MasterPages/Frontend.master"
    AutoEventWireup="true" CodeFile="ManagePhotoAlbum.aspx.cs" Inherits="_ManagePhotoAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="EntityDataSource1"
        InsertItemPosition="LastItem" oniteminserting="ListView1_ItemInserting" 
        onitemcreated="ListView1_ItemCreated">
        <%-- Template for Display an Element from the data source --%>
        <ItemTemplate>
            <li style="">
                <asp:Image ID="ImageUrl" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' ToolTip='<%# Eval("ToolTip") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                <%-- ToolTip:
                <asp:Label ID="ToolTipLabel" runat="server" Text='<%# Eval("ToolTip") %>' />--%>
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CausesValidation="false" />
            </li>
        </ItemTemplate>
        <%-- Template for Insert an Element to the Data Source --%>
        <InsertItemTemplate>
            <li style="">Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' TextMode="MultiLine"/>
                <asp:RequiredFieldValidator ErrorMessage="Enter a description" ControlToValidate="DescriptionTextBox"
                    runat="server" />
                <br />
                ToolTip:
                <asp:TextBox ID="ToolTipTextBox" runat="server" Text='<%# Bind("ToolTip") %>' />
                <asp:RequiredFieldValidator ErrorMessage="Enter a ToolTip" ControlToValidate="ToolTipTextBox"
                    runat="server" />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:CustomValidator ID="cusValImage" ErrorMessage="Select a valid .jpg file" ControlToValidate="FileUpload1"
                    runat="server" />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" CausesValidation="false" />
            </li>
        </InsertItemTemplate>
        <%-- --%>
        <LayoutTemplate>
            <ul class="ItemContainer">
                <li runat="server" id="itemPlaceholder" />
            </ul>
        </LayoutTemplate>
    </asp:ListView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PlanetWroxEntities"
        DefaultContainerName="PlanetWroxEntities" EnableDelete="True" EnableFlattening="False"
        EnableInsert="True" EntitySetName="Pictures" EntityTypeFilter="" Select="" Where="it.PhotoAlbum.Id = @PhotoAlbumId"
        OnInserting="EntityDataSource1_Inserting">
        <WhereParameters>
            <asp:QueryStringParameter Name="PhotoAlbumId" QueryStringField="PhotoAlbumId" Type="Int32" />
        </WhereParameters>
    </asp:EntityDataSource>
</asp:Content>
