<%@ Page Title="Add Edit Review Hand-Code" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="AddEditReviewHandCoded.aspx.cs" Inherits="Management_AddEditReviewHandCoded" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="<u>T</u>itle" AssociatedControlID="TitleText"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TitleText" runat="server" Width="450px" AccessKey="T"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="S<u>u</u>mmary" AssociatedControlID="SummaryText"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="SummaryText" runat="server" Width="450px" AccessKey="U" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="<u>B</u>ody" AssociatedControlID="BodyText"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="BodyText" runat="server" Width="450px" TextMode="MultiLine" AccessKey="B"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="<u>G</u>enre" AssociatedControlID="GenreList"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="GenreList" runat="server" AccessKey="G" 
                    DataSourceID="EntityDataSource1" DataTextField="Name" DataValueField="Id">
                </asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                    ConnectionString="name=PlanetWroxEntities" 
                    DefaultContainerName="PlanetWroxEntities" EnableFlattening="False" 
                    EntitySetName="Genres" Select="it.[Id], it.[Name]">
                </asp:EntityDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="<u>A</u>uthorized" AssociatedControlID="Authorized"></asp:Label>
            </td>
            <td>
                <asp:CheckBox ID="Authorized" runat="server" AccessKey="A"/>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="SaveButton" runat="server" AccessKey="S" Text="Save" 
                    onclick="SaveButton_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

