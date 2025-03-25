<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserWebForm.aspx.cs" Inherits="Databse_Coursework.UserWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Users</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <%@ Register Src="NavBar.ascx" TagPrefix="uc" TagName="NavBar" %>
        <uc:NavBar runat="server" ID="NavBar1" />

        <div class="container mt-5">
            <!-- FormView -->
            <div class="card mb-4">
                <div class="d-flex flex-row justify-content-between align-items-center p-2">
                    <h1>User Web Form</h1>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="USERID" DataSourceID="SqlDataSource1" CssClass="form-horizontal">
                        <EditItemTemplate>
                            <div class="mb-3">
                                <label class="form-label">USERID:</label>
                                <asp:Label ID="USERIDLabel1" runat="server" Text='<%# Eval("USERID") %>' CssClass="form-control-plaintext" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">FIRSTNAME:</label>
                                <asp:TextBox ID="FIRSTNAMETextBox" runat="server" Text='<%# Bind("FIRSTNAME") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">LASTNAME:</label>
                                <asp:TextBox ID="LASTNAMETextBox" runat="server" Text='<%# Bind("LASTNAME") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">EMAIL:</label>
                                <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">CONTACT:</label>
                                <asp:TextBox ID="CONTACTTextBox" runat="server" Text='<%# Bind("CONTACT") %>' CssClass="form-control" />
                            </div>
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-secondary" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <div class="mb-3">
                                <label class="form-label">USERID:</label>
                                <asp:TextBox ID="USERIDTextBox" runat="server" Text='<%# Bind("USERID") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">FIRSTNAME:</label>
                                <asp:TextBox ID="FIRSTNAMETextBox" runat="server" Text='<%# Bind("FIRSTNAME") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">LASTNAME:</label>
                                <asp:TextBox ID="LASTNAMETextBox" runat="server" Text='<%# Bind("LASTNAME") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">EMAIL:</label>
                                <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">CONTACT:</label>
                                <asp:TextBox ID="CONTACTTextBox" runat="server" Text='<%# Bind("CONTACT") %>' CssClass="form-control" />
                            </div>
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-success" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-secondary" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="btn btn-primary" />
                        </ItemTemplate>
                    </asp:FormView>
                </div>
            </div>

            <!-- GridView -->
            <div class="card">
                <div class="card-body">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="USERID" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-sm btn-primary" />
                            <asp:BoundField DataField="USERID" HeaderText="USERID" ReadOnly="True" SortExpression="USERID" />
                            <asp:BoundField DataField="FIRSTNAME" HeaderText="FIRSTNAME" SortExpression="FIRSTNAME" />
                            <asp:BoundField DataField="LASTNAME" HeaderText="LASTNAME" SortExpression="LASTNAME" />
                            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                            <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>

        <!-- SQL Data Source -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;USERS&quot; WHERE &quot;USERID&quot; = :USERID" InsertCommand="INSERT INTO &quot;USERS&quot; (&quot;USERID&quot;, &quot;FIRSTNAME&quot;, &quot;LASTNAME&quot;, &quot;EMAIL&quot;, &quot;CONTACT&quot;) VALUES (:USERID, :FIRSTNAME, :LASTNAME, :EMAIL, :CONTACT)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;USERS&quot;" UpdateCommand="UPDATE &quot;USERS&quot; SET &quot;FIRSTNAME&quot; = :FIRSTNAME, &quot;LASTNAME&quot; = :LASTNAME, &quot;EMAIL&quot; = :EMAIL, &quot;CONTACT&quot; = :CONTACT WHERE &quot;USERID&quot; = :USERID">
            <DeleteParameters>
                <asp:Parameter Name="USERID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="USERID" Type="Decimal" />
                <asp:Parameter Name="FIRSTNAME" Type="String" />
                <asp:Parameter Name="LASTNAME" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="CONTACT" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FIRSTNAME" Type="String" />
                <asp:Parameter Name="LASTNAME" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="CONTACT" Type="String" />
                <asp:Parameter Name="USERID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</body>
</html>
