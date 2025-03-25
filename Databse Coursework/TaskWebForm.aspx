<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TaskWebForm.aspx.cs" Inherits="Databse_Coursework.TaskWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tasks</title>
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
                    <h1>Task Web Form</h1>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="TASKID" DataSourceID="SqlDataSource1" CssClass="form-horizontal">
                        <EditItemTemplate>
                            <div class="mb-3">
                                <label class="form-label">TASKID:</label>
                                <asp:Label ID="TASKIDLabel1" runat="server" Text='<%# Eval("TASKID") %>' CssClass="form-control-plaintext" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">TASKNAME:</label>
                                <asp:TextBox ID="TASKNAMETextBox" runat="server" Text='<%# Bind("TASKNAME") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">TASKSTARTDATE:</label>
                                <asp:TextBox ID="TASKSTARTDATETextBox" runat="server" Text='<%# Bind("TASKSTARTDATE") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">TASKENDDATE:</label>
                                <asp:TextBox ID="TASKENDDATETextBox" runat="server" Text='<%# Bind("TASKENDDATE") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">TASKSTATUS:</label>
                                <asp:TextBox ID="TASKSTATUSTextBox" runat="server" Text='<%# Bind("TASKSTATUS") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">MILESTONE_MILESTONEID:</label>
                                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="MILESTONENAME" DataValueField="MILESTONEID" SelectedValue='<%# Bind("MILESTONE_MILESTONEID") %>' Width="254px">
                                </asp:DropDownList>
                            </div>
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-secondary" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <div class="mb-3">
                                <label class="form-label">TASKID:</label>
                                <asp:TextBox ID="TASKIDTextBox" runat="server" Text='<%# Bind("TASKID") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">TASKNAME:</label>
                                <asp:TextBox ID="TASKNAMETextBox" runat="server" Text='<%# Bind("TASKNAME") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">TASKSTARTDATE:</label>
                                <asp:TextBox ID="TASKSTARTDATETextBox" runat="server" Text='<%# Bind("TASKSTARTDATE") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">TASKENDDATE:</label>
                                <asp:TextBox ID="TASKENDDATETextBox" runat="server" Text='<%# Bind("TASKENDDATE") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">TASKSTATUS:</label>
                                <asp:TextBox ID="TASKSTATUSTextBox" runat="server" Text='<%# Bind("TASKSTATUS") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">MILESTONE_MILESTONEID:</label>
                                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource2" DataTextField="MILESTONENAME" DataValueField="MILESTONEID" SelectedValue='<%# Bind("MILESTONE_MILESTONEID") %>' CssClass="form-select">
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
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TASKID" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" ItemStyle-CssClass="d-flex gap-2" ControlStyle-CssClass="btn btn-sm btn-primary" >
<ControlStyle CssClass="btn btn-sm btn-primary"></ControlStyle>

<ItemStyle CssClass="d-flex gap-2"></ItemStyle>
                            </asp:CommandField>
                            <asp:BoundField DataField="TASKID" HeaderText="TASKID" ReadOnly="True" SortExpression="TASKID" />
                            <asp:BoundField DataField="TASKNAME" HeaderText="TASKNAME" SortExpression="TASKNAME" />
                            <asp:BoundField DataField="TASKSTARTDATE" HeaderText="TASKSTARTDATE" SortExpression="TASKSTARTDATE" />
                            <asp:BoundField DataField="TASKENDDATE" HeaderText="TASKENDDATE" SortExpression="TASKENDDATE" />
                            <asp:BoundField DataField="TASKSTATUS" HeaderText="TASKSTATUS" SortExpression="TASKSTATUS" />
                            <asp:BoundField DataField="MILESTONE_MILESTONEID" HeaderText="MILESTONE_MILESTONEID" SortExpression="MILESTONE_MILESTONEID" />
                            <asp:TemplateField HeaderText="Milestone Name">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="TASKNAME" DataValueField="TASKID" SelectedValue='<%# Bind("MILESTONE_MILESTONEID") %>' AutoPostBack="True" CssClass="form-select">
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="MILESTONENAME" Enabled="False" DataValueField="MILESTONEID" SelectedValue='<%# Bind("MILESTONE_MILESTONEID") %>' CssClass="form-select">
                                    </asp:DropDownList>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>

        <!-- SQL Data Source -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;TASKS&quot; WHERE &quot;TASKID&quot; = :TASKID" InsertCommand="INSERT INTO &quot;TASKS&quot; (&quot;TASKID&quot;, &quot;TASKNAME&quot;, &quot;TASKSTARTDATE&quot;, &quot;TASKENDDATE&quot;, &quot;TASKSTATUS&quot;, &quot;MILESTONE_MILESTONEID&quot;) VALUES (:TASKID, :TASKNAME, :TASKSTARTDATE, :TASKENDDATE, :TASKSTATUS, :MILESTONE_MILESTONEID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TASKS&quot;" UpdateCommand="UPDATE &quot;TASKS&quot; SET &quot;TASKNAME&quot; = :TASKNAME, &quot;TASKSTARTDATE&quot; = :TASKSTARTDATE, &quot;TASKENDDATE&quot; = :TASKENDDATE, &quot;TASKSTATUS&quot; = :TASKSTATUS, &quot;MILESTONE_MILESTONEID&quot; = :MILESTONE_MILESTONEID WHERE &quot;TASKID&quot; = :TASKID">
            <DeleteParameters>
                <asp:Parameter Name="TASKID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TASKID" Type="Decimal" />
                <asp:Parameter Name="TASKNAME" Type="String" />
                <asp:Parameter Name="TASKSTARTDATE" Type="DateTime" />
                <asp:Parameter Name="TASKENDDATE" Type="DateTime" />
                <asp:Parameter Name="TASKSTATUS" Type="String" />
                <asp:Parameter Name="MILESTONE_MILESTONEID" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TASKNAME" Type="String" />
                <asp:Parameter Name="TASKSTARTDATE" Type="DateTime" />
                <asp:Parameter Name="TASKENDDATE" Type="DateTime" />
                <asp:Parameter Name="TASKSTATUS" Type="String" />
                <asp:Parameter Name="MILESTONE_MILESTONEID" Type="Decimal" />
                <asp:Parameter Name="TASKID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;MILESTONES&quot; WHERE &quot;MILESTONEID&quot; = :MILESTONEID" InsertCommand="INSERT INTO &quot;MILESTONES&quot; (&quot;MILESTONEID&quot;, &quot;MILESTONENAME&quot;) VALUES (:MILESTONEID, :MILESTONENAME)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;MILESTONEID&quot;, &quot;MILESTONENAME&quot; FROM &quot;MILESTONES&quot;" UpdateCommand="UPDATE &quot;MILESTONES&quot; SET &quot;MILESTONENAME&quot; = :MILESTONENAME WHERE &quot;MILESTONEID&quot; = :MILESTONEID">
            <DeleteParameters>
                <asp:Parameter Name="MILESTONEID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MILESTONEID" Type="Decimal" />
                <asp:Parameter Name="MILESTONENAME" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MILESTONENAME" Type="String" />
                <asp:Parameter Name="MILESTONEID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</body>
</html>