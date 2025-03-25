<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MilestoneWebForm.aspx.cs" Inherits="Databse_Coursework.MilestoneWebForm" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Milestones</title>
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
                   <h1>Milestones Web Form</h1> <asp:FormView ID="FormView1" runat="server" DataKeyNames="MILESTONEID" DataSourceID="SqlDataSource1" CssClass="form-horizontal">
                        <EditItemTemplate>
                            <div class="mb-3">
                                <label class="form-label">MILESTONEID:</label>
                                <asp:Label ID="MILESTONEIDLabel1" runat="server" Text='<%# Eval("MILESTONEID") %>' CssClass="form-control-plaintext" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">MILESTONENAME:</label>
                                <asp:TextBox ID="MILESTONENAMETextBox" runat="server" Text='<%# Bind("MILESTONENAME") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">MILESTONEDUEDATE:</label>
                                <asp:TextBox ID="MILESTONEDUEDATETextBox" runat="server" Text='<%# Bind("MILESTONEDUEDATE") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">PROJECT_PROJECTID:</label>
                                <asp:TextBox ID="PROJECT_PROJECTIDTextBox" runat="server" Text='<%# Bind("PROJECT_PROJECTID") %>' CssClass="form-control" />
                            </div>
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-secondary" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <div class="mb-3">
                                <label class="form-label">MILESTONEID:</label>
                                <asp:TextBox ID="MILESTONEIDTextBox" runat="server" Text='<%# Bind("MILESTONEID") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">MILESTONENAME:</label>
                                <asp:TextBox ID="MILESTONENAMETextBox" runat="server" Text='<%# Bind("MILESTONENAME") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">MILESTONEDUEDATE:</label>
                                <asp:TextBox ID="MILESTONEDUEDATETextBox" runat="server" Text='<%# Bind("MILESTONEDUEDATE") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">PROJECT_PROJECTID:</label>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="PROJECTNAME" DataValueField="PROJECTID" SelectedValue='<%# Bind("PROJECT_PROJECTID") %>' CssClass="form-select">
                                </asp:DropDownList>
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
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MILESTONEID" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-sm btn-primary" />
                            <asp:BoundField DataField="MILESTONEID" HeaderText="MILESTONEID" ReadOnly="True" SortExpression="MILESTONEID" />
                            <asp:BoundField DataField="MILESTONENAME" HeaderText="MILESTONENAME" SortExpression="MILESTONENAME" />
                            <asp:BoundField DataField="MILESTONEDUEDATE" HeaderText="MILESTONEDUEDATE" SortExpression="MILESTONEDUEDATE" />
                            <asp:BoundField DataField="PROJECT_PROJECTID" HeaderText="PROJECT_PROJECTID" SortExpression="PROJECT_PROJECTID" />
                            <asp:TemplateField HeaderText="Project Name">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="PROJECTNAME" DataValueField="PROJECTID" SelectedValue='<%# Bind("PROJECT_PROJECTID") %>' CssClass="form-select">
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="PROJECTNAME" Enabled="false" DataValueField="PROJECTID" SelectedValue='<%# Bind("PROJECT_PROJECTID") %>' CssClass="form-select">
                                    </asp:DropDownList>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>

        <!-- SQL Data Sources -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;MILESTONES&quot; WHERE &quot;MILESTONEID&quot; = :MILESTONEID" InsertCommand="INSERT INTO &quot;MILESTONES&quot; (&quot;MILESTONEID&quot;, &quot;MILESTONENAME&quot;, &quot;MILESTONEDUEDATE&quot;, &quot;PROJECT_PROJECTID&quot;) VALUES (:MILESTONEID, :MILESTONENAME, :MILESTONEDUEDATE, :PROJECT_PROJECTID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;MILESTONES&quot;" UpdateCommand="UPDATE &quot;MILESTONES&quot; SET &quot;MILESTONENAME&quot; = :MILESTONENAME, &quot;MILESTONEDUEDATE&quot; = :MILESTONEDUEDATE, &quot;PROJECT_PROJECTID&quot; = :PROJECT_PROJECTID WHERE &quot;MILESTONEID&quot; = :MILESTONEID">
            <DeleteParameters>
                <asp:Parameter Name="MILESTONEID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MILESTONEID" Type="Decimal" />
                <asp:Parameter Name="MILESTONENAME" Type="String" />
                <asp:Parameter Name="MILESTONEDUEDATE" Type="DateTime" />
                <asp:Parameter Name="PROJECT_PROJECTID" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MILESTONENAME" Type="String" />
                <asp:Parameter Name="MILESTONEDUEDATE" Type="DateTime" />
                <asp:Parameter Name="PROJECT_PROJECTID" Type="Decimal" />
                <asp:Parameter Name="MILESTONEID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PROJECTID&quot;, &quot;PROJECTNAME&quot; FROM &quot;PROJECTS&quot;"></asp:SqlDataSource>
    </form>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</body>
</html>