<%--<%@ Page Language="C#" AutoEventWireup="true"--%>
    CodeBehind="Default.aspx.cs"
    Inherits="YourProjectNamespace.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Student Details</title>
</head>
<body>
    <form id="form1" runat="server">

        <h2>Student Details</h2>

        <asp:GridView ID="GridView1"
            runat="server"
            AutoGenerateColumns="False"
            BorderWidth="1"
            CellPadding="5">

            <Columns>
                <asp:BoundField DataField="StudentID"
                    HeaderText="Student ID" />

                <asp:BoundField DataField="EnrollmentNo"
                    HeaderText="Enrollment No" />

                <asp:BoundField DataField="StudentName"
                    HeaderText="Student Name" />

                <asp:BoundField DataField="Department"
                    HeaderText="Department" />

                <asp:BoundField DataField="Passing"
                    HeaderText="Passing" />

                <asp:BoundField DataField="Year"
                    HeaderText="Year" />

                <asp:BoundField DataField="PlacementStatus"
                    HeaderText="Is Placed" />
            </Columns>

        </asp:GridView>

        <br />
        <a href="Companys.aspx">View Company Details</a>

    </form>
</body>
</html>