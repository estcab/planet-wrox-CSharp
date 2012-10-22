<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
<h1>
    Get in touch with us
</h1>
<script type="text/javascript">

    function ValidatePhoneNumbers(sender, args) {
        var phoneHome = document.getElementById('<%= PhoneHomeTextBox.ClientID %>');
        var phoneBusiness = document.getElementById('<%= PhoneBusinessTextBox.ClientID %>');

        if (phoneHome.value != '' || phoneBusiness.value != '') {
            args.IsValid = true;
        }
        else {
            args.IsValid = false;
        }
    }   
</script>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table class="style1">
            <tr>
                <td colspan="3">
                    Use the form below to get in touch with us. Enter your name, e-mail address and
                    your home or business phone to get in touch with us
                </td>
            </tr>
            <tr>
                <td>
                    Name
                </td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTextBox"
                        ErrorMessage="Enter your name" CssClass="ErrorMessage">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    E-mail address
                </td>
                <td class="style2">
                    <asp:TextBox ID="EmailAddressTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddressTextBox"
                        CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter an e‑mail address">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddressTextBox"
                        CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="RegularEnter a valid e‑mail address"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    E-mail address again
                </td>
                <td class="style2">
                    <asp:TextBox ID="ConfirmEmailAddressTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddressTextBox"
                        CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Confirm the e‑mail address">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddressTextBox"
                        ControlToValidate="ConfirmEmailAddressTextBox" CssClass="ErrorMessage" Display="Dynamic"
                        ErrorMessage="Retype the e-mail address">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Home phone number
                </td>
                <td class="style2">
                    <asp:TextBox ID="PhoneHomeTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="ValidatePhoneNumbers"
                        CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your home or business phone number"
                        OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Business phone number
                </td>
                <td class="style2">
                    <asp:TextBox ID="PhoneBusinessTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Comments
                </td>
                <td class="style2">
                    <asp:TextBox ID="CommentsTextBox" runat="server" TextMode="MultiLine" Width="270px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="CommentsTextBox"
                        CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a comment">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;
                </td>
                <td class="style2">
                    <asp:Button ID="SendButton" runat="server" Text="Send" OnClick="SendButton_Click" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style3" colspan="3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage"
                        HeaderText="Please correct the following errors before you press the Send button:"
                        ShowMessageBox="True" ShowSummary="False" />
                </td>
            </tr>
        </table>
        <asp:Label ID="Message" runat="server" Text="Message Sent" Visible="false" />
    </ContentTemplate>
</asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
        <div class="PleaseWait">
            Please Wait...
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>
