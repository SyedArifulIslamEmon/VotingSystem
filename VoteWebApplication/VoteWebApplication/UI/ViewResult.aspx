<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewResult.aspx.cs" Inherits="VoteWebApplication.UI.ViewResult" %>
<%@ Import Namespace="VoteWebApplication.BLL" %>
<%@ Import Namespace="VoteWebApplication.Model" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Css/bootstrap.min.css" rel="stylesheet" />
    <title>
        View Result
    </title>
    <style type="text/css">
        .auto-style1 {
            width: 178px;
        }
        .auto-style2 {
            width: 225px;
        }
        .table {
            width: 711px;
        }
        .auto-style3 {
            width: 132px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<%
    CandidateManager candidateManager = new CandidateManager();
    List<Candidate> candidateList = candidateManager.GetAllCandidateOrderByVotes();
%>
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
                        <div class="panel panel-primary center-block" style="width: 712px; margin-top: 30px;">
                            <div class="panel-heading"> Result of Voting </div>
                            <div class="panel-body">
                                <table class="table">
                                    <tr>
                                        <td class="auto-style1">
                                            Symbol Of Candidate
                                        </td>
                                        <td class="auto-style2">
                                            Name Of Candidate
                                        </td>
                                        <td class="auto-style3">
                                            Status
                                        </td>
                                        <td>
                                            No of Votes
                                        </td>
                                    </tr>
                                <%
                                    for(int index=0;index<candidateList.Count;index++)
                                    {                                    
                                %>
                                    <tr>
                                        <td class="auto-style1">
                                            <%=candidateList[index].CandidateSymbol %>
                                        </td>
                                        <td class="auto-style2">
                                            <%=candidateList[index].CandidateName %>
                                        </td>
                                        <td class="auto-style3">
                                            <%if(index==0)
                                                  Response.Write("Winner");
                                              else
                                              {
                                                  Response.Write("Looser");
                                              } %>
                                        </td>
                                        <td>
                                            <%=candidateList[index].NoOfVote %>
                                        </td>
                                    </tr>
                                <%
                                    }
                                %>
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
