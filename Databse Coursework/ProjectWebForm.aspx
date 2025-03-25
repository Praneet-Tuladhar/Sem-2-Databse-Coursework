<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectWebForm.aspx.cs" Inherits="Databse_Coursework.ProjectWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Projects</title>
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
   <h1>Project Web Form</h1><asp:FormView ID="FormView1" runat="server" DataKeyNames="PROJECTID" DataSourceID="SqlDataSource1" CssClass="form-horizontal" Height="16px">
                        <EditItemTemplate>
                            <div class="mb-3">
                                <label class="form-label">PROJECTID:</label>
                                <asp:Label ID="PROJECTIDLabel1" runat="server" Text='<%# Eval("PROJECTID") %>' CssClass="form-control-plaintext" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">PROJECTNAME:</label>
                                <asp:TextBox ID="PROJECTNAMETextBox" runat="server" Text='<%# Bind("PROJECTNAME") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">PROJECTSTARTDATE:</label>
                                <asp:TextBox ID="PROJECTSTARTDATETextBox" runat="server" Text='<%# Bind("PROJECTSTARTDATE") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">PROJECTDUEDATE:</label>
                                <asp:TextBox ID="PROJECTDUEDATETextBox" runat="server" Text='<%# Bind("PROJECTDUEDATE") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">PROJECTSTATUS:</label>
                                <asp:TextBox ID="PROJECTSTATUSTextBox" runat="server" Text='<%# Bind("PROJECTSTATUS") %>' CssClass="form-control" />
                            </div>
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-secondary" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <div class="mb-3">
                                <label class="form-label">PROJECTID:</label>
                                <asp:TextBox ID="PROJECTIDTextBox" runat="server" Text='<%# Bind("PROJECTID") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">PROJECTNAME:</label>
                                <asp:TextBox ID="PROJECTNAMETextBox" runat="server" Text='<%# Bind("PROJECTNAME") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">PROJECTSTARTDATE:</label>
                                <asp:TextBox ID="PROJECTSTARTDATETextBox" runat="server" Text='<%# Bind("PROJECTSTARTDATE") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">PROJECTDUEDATE:</label>
                                <asp:TextBox ID="PROJECTDUEDATETextBox" runat="server" Text='<%# Bind("PROJECTDUEDATE") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">PROJECTSTATUS:</label>
                                <asp:TextBox ID="PROJECTSTATUSTextBox" runat="server" Text='<%# Bind("PROJECTSTATUS") %>' CssClass="form-control" />
                            </div>
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-success" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-secondary" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="btn btn-primary" />
                        </ItemTemplate>
                    </asp:FormView></div></div>

            <!-- GridView -->
            <div class="card">
                <div class="card-body">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PROJECTID" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-sm btn-primary" />
                            <asp:BoundField DataField="PROJECTID" HeaderText="PROJECTID" ReadOnly="True" SortExpression="PROJECTID" />
                            <asp:BoundField DataField="PROJECTNAME" HeaderText="PROJECTNAME" SortExpression="PROJECTNAME" />
                            <asp:BoundField DataField="PROJECTSTARTDATE" HeaderText="PROJECTSTARTDATE" SortExpression="PROJECTSTARTDATE" />
                            <asp:BoundField DataField="PROJECTDUEDATE" HeaderText="PROJECTDUEDATE" SortExpression="PROJECTDUEDATE" />
                            <asp:BoundField DataField="PROJECTSTATUS" HeaderText="PROJECTSTATUS" SortExpression="PROJECTSTATUS" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>

        <!-- SQL Data Source -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;PROJECTS&quot; WHERE &quot;PROJECTID&quot; = :PROJECTID" InsertCommand="INSERT INTO &quot;PROJECTS&quot; (&quot;PROJECTID&quot;, &quot;PROJECTNAME&quot;, &quot;PROJECTSTARTDATE&quot;, &quot;PROJECTDUEDATE&quot;, &quot;PROJECTSTATUS&quot;) VALUES (:PROJECTID, :PROJECTNAME, :PROJECTSTARTDATE, :PROJECTDUEDATE, :PROJECTSTATUS)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECTS&quot;" UpdateCommand="UPDATE &quot;PROJECTS&quot; SET &quot;PROJECTNAME&quot; = :PROJECTNAME, &quot;PROJECTSTARTDATE&quot; = :PROJECTSTARTDATE, &quot;PROJECTDUEDATE&quot; = :PROJECTDUEDATE, &quot;PROJECTSTATUS&quot; = :PROJECTSTATUS WHERE &quot;PROJECTID&quot; = :PROJECTID">
            <DeleteParameters>
                <asp:Parameter Name="PROJECTID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PROJECTID" Type="Decimal" />
                <asp:Parameter Name="PROJECTNAME" Type="String" />
                <asp:Parameter Name="PROJECTSTARTDATE" Type="DateTime" />
                <asp:Parameter Name="PROJECTDUEDATE" Type="DateTime" />
                <asp:Parameter Name="PROJECTSTATUS" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PROJECTNAME" Type="String" />
                <asp:Parameter Name="PROJECTSTARTDATE" Type="DateTime" />
                <asp:Parameter Name="PROJECTDUEDATE" Type="DateTime" />
                <asp:Parameter Name="PROJECTSTATUS" Type="String" />
                <asp:Parameter Name="PROJECTID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</body>
</html>
