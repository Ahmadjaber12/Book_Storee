<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="dim.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link href="StyleSheet2.css" rel="stylesheet" />

   
</head>
<body style="height: 590px">
    <form id="form1" runat="server" class="form">
        <div class="title">Welcome</div>
      <div class="subtitle">Let's create your account!</div>
        
        <div class="input-container ic1">
            <asp:TextBox ID="firstname" CssClass="input" runat="server" required></asp:TextBox> 
        <div class="cut"></div>
        <label for="firstname" class="placeholder">First name</label>
      </div>  

        <div class="input-container ic2">
            <asp:TextBox ID="lnameTextBox2" CssClass="input" runat="server" required></asp:TextBox> 
        <div class="cut"></div>
        <label for="lastname" class="placeholder">Last name</label>
      </div>
      <div class="input-container ic2">
            <asp:TextBox ID="unameTextBox3" CssClass="input"  pattern="[A-Za-z]{7}" title="7 letters only example:a.jaber" runat="server" required></asp:TextBox> 
        <div class="cut "></div>
        <label for="email" class="placeholder" >UserName</label>
      </div>    <asp:Label ID="Label1" CssClass="label2" runat="server">This Username is Taken</asp:Label>   
        <div class="input-container ic2">
            <asp:TextBox ID="passTextBox4" CssClass="input" runat="server" required></asp:TextBox> 
        <div class="cut"></div>
        <label for="Password1" class="placeholder">Password</label>
      </div>
         <div class="input-container ic2 ">
            <asp:TextBox ID="repassTextBox5" CssClass="input"  runat="server" required></asp:TextBox> 
       <div class="cut "></div> <label id="ll" for="Password" class="placeholder">Confirm</label>
      </div><asp:Label ID="Label3" CssClass="label2" runat="server">Confirm field is Wrong!</asp:Label> 
      <asp:Button ID="Button1" CssClass="submit" runat="server" Text="Save" OnClick="Button1_Click" />
    </form>
    
</body>
</html>
