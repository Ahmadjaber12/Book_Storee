<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="dim.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="main.css" rel="stylesheet" />
    <link rel="stylesheet" href="pic/all.min.css">
    <title></title>
</head>
<body class="block">
    <form id="form1" runat="server">
        <div class="first_part">
             <div class="container">
        <div class="overlay">
    <div class="navbar">
        <div class="logo">
            <a href="#">
                Start Bootstrap
            </a>
        </div>
        <div class="list_1">
            <ul>
                <li>
                    <a>About</a>
                </li>
                <li>
                    <a>Projects</a>
                </li>
                <li>
                    <a>Contact</a>
                </li>
            </ul>
        
        </div></div><div class="clr"></div>
        <div class="main_section">
            <h1>
                GRAYSCALE
            </h1>
            <h2>
                A free, responsive, one page Bootstrap theme created by Start Bootstrap.
            </h2>
            <div class="btn_1">
            <a href="#"> GET STARTED</a></div>
        </div></div>
    </div></div>
        <asp:Table><asp:TableHeaderRow><asp:TableHeaderCell ColumnSpan="2">Books Suggested</asp:TableHeaderCell><asp:TableHeaderCell ColumnSpan="2">Books Chosen </asp:TableHeaderCell></asp:TableHeaderRow>
        <asp:TableRow><% %></asp:TableRow>

        </asp:Table>
    </form>
</body>
</html>
