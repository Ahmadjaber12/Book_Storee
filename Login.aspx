<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="dim.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="login.css" rel="stylesheet" />
    
</head>
<body>
    
    <form id="form1" runat="server">
        
  <h1>Login To Your Book List</h1>
  <div class="inset">
  <p>
      
    <label for="email">Username</label>
    <asp:TextBox ID="TextBox1" runat="server" type="text" name="email" required></asp:TextBox>
  </p>
  <p>
      
    <label for="password">PASSWORD</label>
      <asp:TextBox ID="TextBox2" runat="server" type="password" name="password" required></asp:TextBox>
  </p>
 <div class="disp">    
<input  type="checkbox" name="cb1" id="cb1" onchange="document.getElementById('TextBox2').type=this.checked ? 'text':'password'" /><label for="cb1" class="cb1">Show Password</label></div> 
 </div>
    
  <p class="p-container">
      <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="Button1_Click1" /> 
  </p>
</form>
    
</body>
</html>
