<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CandidateEntry.aspx.cs" Inherits="VoteWebApplication.UI.CandidateEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Candidate Entry</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="nav nav-tabs center-block">
                            <ul class="nav nav-pills">
                                <li><a href="Home.aspx">Voter Entry</a></li>
                                <li><a href="CandidateEntry.aspx">Candidate Entry</a></li>
                                <li><a href="CastVote.aspx">Cast Vote</a></li>
                                <li><a href="ViewResult.aspx">View Result</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-primary center-block" style="width: 500px; margin-top: 30px;">
                            <div class="panel-heading"> Candidate Entry </div>
                            <div class="panel-body">
                                <table class="table">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="Candidate Name"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="candidateNameTextBox" runat="server" Width="236px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="Symbol"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="candidateSymbolTextBox" runat="server" Width="236px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Button ID="saveButton" runat="server" Text="Save" Height="22px" Width="81px" OnClick="saveButton_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <span id="alertMessage" runat="server"></span>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
