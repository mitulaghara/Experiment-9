
<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Companys.aspx.cs"
    Inherits="YourProjectNamespace.Companys" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Company Details</title>
</head>
<body>
    <form id="form1" runat="server">

        <h2>Company Placement Details</h2>

        <asp:GridView ID="GridView1"
            runat="server"
            AutoGenerateColumns="False"
            BorderWidth="1"
            CellPadding="5"
            EmptyDataText="No placement records found.">

            <Columns>
                <asp:BoundField DataField="No"
                    HeaderText="No" />

                <asp:BoundField DataField="CompanyName"
                    HeaderText="Company Name" />

                <asp:BoundField DataField="PackageOffer"
                    HeaderText="Package Offer (LPA)"
                    DataFormatString="{0:N2}" />

                <asp:BoundField DataField="StudentID"
                    HeaderText="Student ID" />

                <asp:BoundField DataField="EnrollmentNo"
                    HeaderText="Enrollment No" />

                <asp:BoundField DataField="StudentName"
                    HeaderText="Student Name" />

                <asp:BoundField DataField="Department"
                    HeaderText="Department" />
            </Columns>

        </asp:GridView>

        <br />
        <hr />

        <h2>Company Details Summary</h2>

        <asp:GridView ID="GridView2"
            runat="server"
            AutoGenerateColumns="False"
            BorderWidth="1"
            CellPadding="5"
            EmptyDataText="No company summary available.">

            <Columns>
                <asp:BoundField DataField="CompanyName"
                    HeaderText="Company Name" />

                <asp:BoundField DataField="PackageOffer"
                    HeaderText="Package Offer (LPA)"
                    DataFormatString="{0:N2}" />

                <asp:BoundField DataField="TotalStudents"
                    HeaderText="Total Students Selected" />
            </Columns>

        </asp:GridView>

        <br />

        <a href="Default.aspx">Back to Student Details</a>

    </form>
</body>
</html>
