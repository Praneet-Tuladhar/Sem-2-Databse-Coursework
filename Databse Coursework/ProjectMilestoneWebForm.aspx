<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectMilestoneWebForm.aspx.cs" Inherits="Databse_Coursework.ProjectMilestoneWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Project Milestones</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
                    <%@ Register Src="NavBar.ascx" TagPrefix="uc" TagName="NavBar" %>

<uc:NavBar runat="server" ID="NavBar1" />
        <div class="container mt-5">
            <!-- DropDownList -->
            <div class="row mb-3">
                <div class="d-flex flex-row justify-content-between align-items-center p-2">
   <h1>Project Milestone Web Form</h1>
                    <label for="DropDownList1" class="form-label h5">Select Project:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="PROJECTNAME" DataValueField="PROJECTID" CssClass="form-select">
                    </asp:DropDownList></label>
                    </div>

            <!-- GridView -->
            <div class="row">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PROJECTID,MILESTONEID" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered">
                        <Columns>
                            <asp:BoundField DataField="PROJECTID" HeaderText="PROJECTID" ReadOnly="True" SortExpression="PROJECTID" />
                            <asp:BoundField DataField="PROJECTNAME" HeaderText="PROJECTNAME" SortExpression="PROJECTNAME" />
                            <asp:BoundField DataField="PROJECTSTARTDATE" HeaderText="PROJECTSTARTDATE" SortExpression="PROJECTSTARTDATE" />
                            <asp:BoundField DataField="PROJECTDUEDATE" HeaderText="PROJECTDUEDATE" SortExpression="PROJECTDUEDATE" />
                            <asp:BoundField DataField="PROJECTSTATUS" HeaderText="PROJECTSTATUS" SortExpression="PROJECTSTATUS" />
                            <asp:BoundField DataField="MILESTONEID" HeaderText="MILESTONEID" ReadOnly="True" SortExpression="MILESTONEID" />
                            <asp:BoundField DataField="MILESTONENAME" HeaderText="MILESTONENAME" SortExpression="MILESTONENAME" />
                            <asp:BoundField DataField="MILESTONEDUEDATE" HeaderText="MILESTONEDUEDATE" SortExpression="MILESTONEDUEDATE" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
            </div>
        <!-- SQL Data Sources -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT 
    p.projectid, 
    p.projectname, 
    p.projectstartdate, 
    p.projectduedate, 
    p.projectstatus, 
    m.milestoneid, 
    m.milestonename, 
    m.milestoneduedate
FROM projects p
JOIN milestones m ON p.projectid = m.project_projectid
WHERE p.projectid = :project_id
">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="project_id" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PROJECTID&quot;, &quot;PROJECTNAME&quot; FROM &quot;PROJECTS&quot;"></asp:SqlDataSource>
    </form>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</body>
</html>