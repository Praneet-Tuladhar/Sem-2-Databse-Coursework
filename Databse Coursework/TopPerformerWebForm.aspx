<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TopPerformerWebForm.aspx.cs" Inherits="Databse_Coursework.TopPerformerWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Top Performers</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
    
    <form id="form1" runat="server">
                    <%@ Register Src="NavBar.ascx" TagPrefix="uc" TagName="NavBar" %>

<uc:NavBar runat="server" ID="NavBar1" />
        <div class="container mt-5">
            <div class="row mb-3">
                <div class="d-flex flex-row justify-content-between align-items-center p-2">
                    <h1>Top Performers Web Form</h1>
                    <label for="DropDownList1" class="form-label h5">Select Project:
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="PROJECTNAME" DataValueField="PROJECTID" CssClass="form-select">
                    </asp:DropDownList></label>
                </div>
            </div>
            <!-- GridView with Bootstrap Table Classes -->
            <div class="row">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered">
                    </asp:GridView>
                </div>
            </div>
        </div>

        <!-- SQL Data Sources -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT *
FROM (
    SELECT 
        u.userid, 
        u.firstname, 
        u.lastname, 
        p.projectid,
        p.projectname,
        p.projectstartdate,
        p.projectduedate,
        p.projectstatus,
        COUNT(ut.task_taskid) AS completed_tasks
    FROM userprojecttask ut
    JOIN Users u ON ut.user_userid = u.userid
    JOIN tasks t ON ut.task_taskid = t.taskid
    JOIN projects p ON ut.project_projectid = p.projectid
    WHERE ut.project_projectid = :project_id
    AND t.taskstatus = 'Completed'
    GROUP BY u.userid, u.firstname, u.lastname, p.projectid, p.projectname, p.projectstartdate, p.projectduedate, p.projectstatus
    ORDER BY completed_tasks DESC
) 
WHERE ROWNUM <= 3">
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
