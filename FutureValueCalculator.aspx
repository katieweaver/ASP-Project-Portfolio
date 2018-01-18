<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FutureValueForm.aspx.cs" Inherits="Weaver_KatieAssignment1.FutureValueForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblFV" runat="server" Text="Future Value Calculator" Font-Bold="True" Font-Size="Larger"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Homepage" Width="214px" />
            <br />
            <asp:Button ID="btnLoan" runat="server" OnClick="btnLoan_Click" Text="Payment Calculator" Width="214px" />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="Group2" />
            <br />
            <asp:Label ID="lblInterest" runat="server" Text="Interest Rate"></asp:Label>
            <br />
            <asp:DropDownList ID="drpInterestFV" runat="server">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lblTerm" runat="server" Text="Term"></asp:Label>
            <br />
            <asp:TextBox runat="server" id="txtTermFV"  ValidationGroup="Group2"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValidateTermFV" runat="server" ControlToValidate="txtTermFV" ErrorMessage="Term must be a positive value." ForeColor="Red" ValidationGroup="Group2">*Required Field</asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtTermFV" ErrorMessage="The term must be a positive number." Operator="GreaterThan" Type="Integer" ValidationGroup="Group2" ValueToCompare="0">red</asp:CompareValidator>
            <br />
            <br />
            <br />
            <asp:Label ID="lblInitialFV" runat="server" Text="Present Value"></asp:Label>
            <br />
            <asp:TextBox ID="txtInitialFV" runat="server" ValidationGroup="Group2"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtInitialFV" ErrorMessage="The present value must be a positive number." ForeColor="Red" ValidationGroup="Group2">*Required Field</asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtInitialFV" ErrorMessage="The present value must be a positive number." ForeColor="Red" Operator="GreaterThan" ValidationGroup="Group2" ValueToCompare="0"></asp:CompareValidator>
            <br />
            <br />
            <br />
            <asp:Button ID="btnCalcFV" runat="server" OnClick="btnCalcFV_Click" Text="Calculate Future Value" Width="214px" ValidationGroup="Group2" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="The Future Value Will Be:"></asp:Label>
            <br />
            <asp:Label ID="lblResultFV" runat="server"></asp:Label>
        </div>
    </form>

</body>
</html>
