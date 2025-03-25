<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NavBar.ascx.cs" Inherits="Databse_Coursework.NavBar" %>


<!-- Bootstrap Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <asp:LinkButton ID="btnForm9" runat="server" CssClass="navbar-brand" OnClick="btnForm9_Click">Web Forms</asp:LinkButton>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <asp:Button ID="btnForm1" runat="server" Text="Milestone Form" OnClick="btnForm1_Click" CssClass="nav-link btn btn-link" />
                </li>
                <li class="nav-item">
                    <asp:Button ID="btnForm2" runat="server" Text="Project Form" OnClick="btnForm2_Click" CssClass="nav-link btn btn-link" />
                </li>
                <li class="nav-item">
                    <asp:Button ID="btnForm3" runat="server" Text="SubTask Form" OnClick="btnForm3_Click" CssClass="nav-link btn btn-link" />
                </li>
                <li class="nav-item">
                    <asp:Button ID="btnForm4" runat="server" Text="Task Form" OnClick="btnForm4_Click" CssClass="nav-link btn btn-link" />
                </li>
                <li class="nav-item">
                    <asp:Button ID="btnForm5" runat="server" Text="Users Form" OnClick="btnForm5_Click" CssClass="nav-link btn btn-link" />
                </li>
                <li class="nav-item">
                    <asp:Button ID="btnForm6" runat="server" Text="Project Milestone Form" OnClick="btnForm6_Click" CssClass="nav-link btn btn-link" />
                </li>
                <li class="nav-item">
                    <asp:Button ID="btnForm7" runat="server" Text="Top Performer Form" OnClick="btnForm7_Click" CssClass="nav-link btn btn-link" />
                </li>
                <li class="nav-item">
                    <asp:Button ID="btnForm8" runat="server" Text="Users Project Form" OnClick="btnForm8_Click" CssClass="nav-link btn btn-link" />
                </li>
            </ul>
        </div>
    </div>
</nav>

