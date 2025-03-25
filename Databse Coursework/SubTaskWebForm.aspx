<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubTaskWebForm.aspx.cs" Inherits="Databse_Coursework.SubTaskWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SubTasks</title>
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
                    <h1>Sub Task Web Form</h1>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="SUBTASKID" DataSourceID="SqlDataSource1" CssClass="form-horizontal">
                        <EditItemTemplate>
                            <div class="mb-3">
                                <label class="form-label">SUBTASKID:</label>
                                <asp:Label ID="SUBTASKIDLabel1" runat="server" Text='<%# Eval("SUBTASKID") %>' CssClass="form-control-plaintext" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">SUBTASKNAME:</label>
                                <asp:TextBox ID="SUBTASKNAMETextBox" runat="server" Text='<%# Bind("SUBTASKNAME") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">USER_USERID:</label>
                                <asp:TextBox ID="USER_USERIDTextBox" runat="server" Text='<%# Bind("USER_USERID") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">TASK_TASKID:</label>
                                <asp:TextBox ID="TASK_TASKIDTextBox" runat="server" Text='<%# Bind("TASK_TASKID") %>' CssClass="form-control" />
                            </div>
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-secondary" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <div class="mb-3">
                                <label class="form-label">SUBTASKID:</label>
                                <asp:TextBox ID="SUBTASKIDTextBox" runat="server" Text='<%# Bind("SUBTASKID") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">SUBTASKNAME:</label>
                                <asp:TextBox ID="SUBTASKNAMETextBox" runat="server" Text='<%# Bind("SUBTASKNAME") %>' CssClass="form-control" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">USER_USERID:</label>
                                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="FIRSTNAME" DataValueField="USERID" SelectedValue='<%# Bind("USER_USERID") %>' CssClass="form-select">
                                </asp:DropDownList>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">TASK_TASKID:</label>
                                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="TASKNAME" DataValueField="TASKID" SelectedValue='<%# Bind("TASK_TASKID") %>' CssClass="form-select">
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
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SUBTASKID" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-sm btn-primary" />
                            <asp:BoundField DataField="SUBTASKID" HeaderText="SUBTASKID" ReadOnly="True" SortExpression="SUBTASKID" />
                            <asp:BoundField DataField="SUBTASKNAME" HeaderText="SUBTASKNAME" SortExpression="SUBTASKNAME" />
                            <asp:BoundField DataField="USER_USERID" HeaderText="USER_USERID" SortExpression="USER_USERID" />
                            <asp:BoundField DataField="TASK_TASKID" HeaderText="TASK_TASKID" SortExpression="TASK_TASKID" />
                            <asp:TemplateField HeaderText="Task Name &amp; User Name">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource4" DataTextField="TASKNAME" DataValueField="TASKID" SelectedValue='<%# Bind("TASK_TASKID") %>' CssClass="form-select">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;TASKS&quot; WHERE &quot;TASKID&quot; = :TASKID" InsertCommand="INSERT INTO &quot;TASKS&quot; (&quot;TASKID&quot;, &quot;TASKNAME&quot;) VALUES (:TASKID, :TASKNAME)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;TASKID&quot;, &quot;TASKNAME&quot; FROM &quot;TASKS&quot;" UpdateCommand="UPDATE &quot;TASKS&quot; SET &quot;TASKNAME&quot; = :TASKNAME WHERE &quot;TASKID&quot; = :TASKID">
                                        <DeleteParameters>
                                            <asp:Parameter Name="TASKID" Type="Decimal" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="TASKID" Type="Decimal" />
                                            <asp:Parameter Name="TASKNAME" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="TASKNAME" Type="String" />
                                            <asp:Parameter Name="TASKID" Type="Decimal" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                    <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource3" DataTextField="FIRSTNAME" DataValueField="USERID" SelectedValue='<%# Bind("USER_USERID") %>' CssClass="form-select">
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="TASKNAME" Enabled="False" DataValueField="TASKID" AutoPostBack="True" SelectedValue='<%# Bind("TASK_TASKID") %>' CssClass="form-select">
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="FIRSTNAME" Enabled="False" DataValueField="USERID" SelectedValue='<%# Bind("USER_USERID") %>' CssClass="form-select">
                                    </asp:DropDownList>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>

        <!-- SQL Data Source -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;SUBTASK&quot; WHERE &quot;SUBTASKID&quot; = :SUBTASKID" InsertCommand="INSERT INTO &quot;SUBTASK&quot; (&quot;SUBTASKID&quot;, &quot;SUBTASKNAME&quot;, &quot;USER_USERID&quot;, &quot;TASK_TASKID&quot;) VALUES (:SUBTASKID, :SUBTASKNAME, :USER_USERID, :TASK_TASKID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;SUBTASK&quot;" UpdateCommand="UPDATE &quot;SUBTASK&quot; SET &quot;SUBTASKNAME&quot; = :SUBTASKNAME, &quot;USER_USERID&quot; = :USER_USERID, &quot;TASK_TASKID&quot; = :TASK_TASKID WHERE &quot;SUBTASKID&quot; = :SUBTASKID">
            <DeleteParameters>
                <asp:Parameter Name="SUBTASKID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SUBTASKID" Type="Decimal" />
                <asp:Parameter Name="SUBTASKNAME" Type="String" />
                <asp:Parameter Name="USER_USERID" Type="Decimal" />
                <asp:Parameter Name="TASK_TASKID" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SUBTASKNAME" Type="String" />
                <asp:Parameter Name="USER_USERID" Type="Decimal" />
                <asp:Parameter Name="TASK_TASKID" Type="Decimal" />
                <asp:Parameter Name="SUBTASKID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;TASKID&quot;, &quot;TASKNAME&quot; FROM &quot;TASKS&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;USERID&quot;, &quot;FIRSTNAME&quot; FROM &quot;USERS&quot;"></asp:SqlDataSource>
    </form>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</body>
</html>
