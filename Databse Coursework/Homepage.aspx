<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Databse_Coursework.Homepage" %>


<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Project Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet" />
    <!-- Custom styles -->
    <style>
        .chart-container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 1.5rem;
            margin-bottom: 2rem;
            transition: transform 0.3s;
        }
        .chart-container:hover {
            transform: translateY(-5px);
        }
        .chart-title {
            font-size: 1.25rem;
            font-weight: 600;
            color: #495057;
            margin-bottom: 1rem;
        }
        .bg-dashboard {
            background-color: #f8f9fa;
            min-height: 100vh;
        }
        .dashboard-header {
            background: linear-gradient(135deg, #007bff, #6610f2);
            color: white;
            padding: 2rem 0;
            margin-bottom: 2rem;
        }
        .chart-responsive {
            display: block;
            margin: 0 auto;
            max-width: 100%;
        }
    </style>
</head>
<body class="bg-dashboard">
    <form id="form1" runat="server">
        
        <!-- Bootstrap Navigation Bar -->
        <%@ Register Src="NavBar.ascx" TagPrefix="uc" TagName="NavBar" %>
        <uc:NavBar runat="server" ID="NavBar1" />

        <!-- Dashboard Header -->
        <div class="dashboard-header">
            <div class="container">
                <h1 class="display-4">Project Dashboard</h1>
                <p class="lead">Real-time overview of your projects, tasks, and resources</p>
            </div>
        </div>

        <!-- Main Content -->
        <div class="container">
            

            <!-- Charts Section -->
            <div class="row">
                <div class="col-md-6">
                    <div class="chart-container">
                        <h3 class="chart-title">
                            <i class="fas fa-chart-pie mr-2"></i>
                            Task Status Distribution
                        </h3>
                        <div class="chart-responsive">
                            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="500" Height="300">
                                <Series>
                                    <asp:Series ChartType="Pie" Name="Series1" XValueMember="TASKSTATUS" YValueMembers="TASK_COUNT" 
                                        CustomProperties="PieLabelStyle=Outside, PieDrawingStyle=SoftEdge" 
                                        Palette="BrightPastel" BorderWidth="1" BorderColor="White">
                                    </asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1" BackColor="Transparent"></asp:ChartArea>
                                </ChartAreas>
                                <Legends>
                                    <asp:Legend Name="Legend1" Docking="Bottom" Alignment="Center" BorderWidth="0" 
                                        LegendStyle="Row"></asp:Legend>
                                </Legends>
                            </asp:Chart>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-6">
                    <div class="chart-container">
                        <h3 class="chart-title">
                            <i class="fas fa-user-circle mr-2"></i>
                            Resource Status
                        </h3>
                        <div class="chart-responsive">
                            <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" Width="500" Height="300">
                                <Series>
                                    <asp:Series ChartType="Doughnut" Name="Series1" XValueMember="STATUS" YValueMembers="RESOURCECOUNT"
                                        CustomProperties="DoughnutRadius=75, PieLabelStyle=Outside" 
                                        Palette="Excel" BorderWidth="1" BorderColor="White">
                                    </asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1" BackColor="Transparent"></asp:ChartArea>
                                </ChartAreas>
                                <Legends>
                                    <asp:Legend Name="Legend1" Docking="Bottom" Alignment="Center" BorderWidth="0" 
                                        LegendStyle="Row"></asp:Legend>
                                </Legends>
                            </asp:Chart>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="chart-container">
                        <h3 class="chart-title">
                            <i class="fas fa-tasks mr-2"></i>
                            Tasks per Status
                        </h3>
                        <div class="chart-responsive">
                            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource4" Width="800px" Height="400px">
                                <Series>
                                    <asp:Series ChartType="Bar" Name="Series1" XValueMember="TASKSTATUS" YValueMembers="TOTAL_TASKS" 
                                        Palette="Berry" IsValueShownAsLabel="true" BorderWidth="0">
                                    </asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1" BackColor="Transparent">
                                        <AxisX LineColor="#e9ecef" MajorGrid-LineColor="#e9ecef" MajorGrid-LineWidth="0">
                                            <MajorGrid LineColor="#e9ecef" LineWidth="1" />
                                        </AxisX>
                                        <AxisY LineColor="#e9ecef" MajorGrid-LineColor="#e9ecef">
                                            <MajorGrid LineColor="#e9ecef" LineWidth="1" />
                                        </AxisY>
                                    </asp:ChartArea>
                                </ChartAreas>
                                <Legends>
                                    <asp:Legend Name="Legend1" Docking="Top" Alignment="Near" BorderWidth="0" 
                                        LegendStyle="Row" Enabled="false"></asp:Legend>
                                </Legends>
                            </asp:Chart>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- SQL Data Sources (hidden) -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT taskstatus, COUNT(*) AS task_count FROM tasks GROUP BY taskstatus"></asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT taskstatus, COUNT(taskid) AS total_tasks
FROM tasks
GROUP BY taskstatus
ORDER BY total_tasks DESC">
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT status, COUNT(*) AS ResourceCount FROM resources GROUP BY status ORDER BY ResourceCount DESC">
        </asp:SqlDataSource>

        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    </form>
</body>
</html>
