<%@ Page Title="About Us" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" 
    AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" 
    Inherits="About_AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>About Us Page
    </h1>
    <p>
        This is a Demo Web Site buid with ASP.NET.</p>
    <p>
        The site is based on the book Beginning Asp.Net 4 from Wrox.</p>
    
        <asp:Button ID="Button1" runat="server" Text="Button" />

    <Wrox:Banner ID="Banner2" runat="server" DisplayDirection="Horizontal" />
</asp:Content>

