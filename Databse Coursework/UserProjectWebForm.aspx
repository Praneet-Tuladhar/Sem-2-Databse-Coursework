<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProjectWebForm.aspx.cs" Inherits="Databse_Coursework.UserProjectWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Projects</title>
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
<h1>User Project Web Form</h1>
                    <label for="DropDownList1" class="form-label">Select User:
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="FIRSTNAME" DataValueField="USERID" CssClass="form-select">
                    </asp:DropDownList></label>
                </div>
            </div>

            <!-- GridView -->
            <div class="row">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="USERID,PROJECTID" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered">
                        <Columns>
                            <asp:BoundField DataField="USERID" HeaderText="USERID" ReadOnly="True" SortExpression="USERID" />
                            <asp:BoundField DataField="FIRSTNAME" HeaderText="FIRSTNAME" SortExpression="FIRSTNAME" />
                            <asp:BoundField DataField="LASTNAME" HeaderText="LASTNAME" SortExpression="LASTNAME" />
                            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                            <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
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

        <!-- SQL Data Sources -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT 
    u.userid, 
    u.firstname, 
    u.lastname, 
    u.email, 
    u.contact, 
    p.projectid, 
    p.projectname, 
    p.projectstartdate, 
    p.projectduedate, 
    p.projectstatus
FROM users u
JOIN userproject up ON u.userid = up.user_userid
JOIN projects p ON up.project_projectid = p.projectid
WHERE u.userid = :user_id">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="user_id" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;USERID&quot;, &quot;FIRSTNAME&quot; FROM &quot;USERS&quot;"></asp:SqlDataSource>
    </form>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</body>
</html>
