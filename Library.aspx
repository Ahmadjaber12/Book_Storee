<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Library.aspx.cs" MaintainScrollPositionOnPostBack="true" Inherits="dim.Library" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Library</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
  
</head>
<body>
    <div class="overlay">
        
    <form id="form1" runat="server">
            <h3 id="label1">Welcome to the Store</h3>

        <section>
            
            </div>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Button CssClass="cc"   ID="SAVE" runat="server" Text="Save" Height="38px" Width="121px" style="margin-left: 0px; margin-right: 2px" OnClick="SAVE_Click" Font-Bold="True" Font-Size="Medium" />

            &nbsp;&nbsp;&nbsp;

            &nbsp;<asp:Button CssClass="cc" ID="Button1" runat="server" Height="36px" Text="Cancel" Width="114px" Font-Bold="True" Font-Size="Medium" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#99CCFF" NavigateUrl="~/Login.aspx">Already have an account!</asp:HyperLink>
            <asp:Label ID="Label2" CssClass="label2" runat="server" >You Haven't select any book</asp:Label>
        </section>
    </form>
        </div>

</body>
</html>
