<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="dim.Admin" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">



<head runat="server">
	<meta charset="UTF-8">

	<title>Ahmad Store</title>
	<link rel="stylesheet" href="admin.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.6.16/sweetalert2.min.css" integrity="sha512-NvuRGlPf6cHpxQqBGnPe7fPoACpyrjhlSNeXVUY7BZAj1nNhuNpRBq3osC4yr2vswUEuHq2HtCsY2vfLNCndYA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	
</head>

<body>
	    <form id="form1"  runat="server">
	<!-- for header part -->
	<header>

		<div class="logosec">
			<div class="logo">Books Store</div>
			<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210182541/Untitled-design-(30).png"
				class="icn menuicn"
				id="menuicn"
				alt="menu-icon">
		</div>

		<div class="searchbar">
			<input type="text"
				placeholder="Search">
			<div class="searchbtn">
			<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210180758/Untitled-design-(28).png"
					class="icn srchicn"
					alt="search-icon">
			</div>
		</div>

		<div class="messag">
			<div class="circle"></div>
			<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210183322/8.png"
				class="icn"
				alt="">
			<div class="dp">
			<img src=
"pic/155532859_551952193105547_6837154810567235512_n.jpg"
					class="dpicn"
					alt="dp">
			</div>
		</div>

	</header>

	<div class="main-container" id="items">
		<div class="navcontainer">
			<nav class="nav">
                <div class="nav-upper-options">
					<div class="nav-option option1">
						<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210182148/Untitled-design-(29).png"
							class="nav-img"
							alt="dashboard">
						<h3 class="bb"> Dashboard</h3>
					</div>

					<div class="option2 nav-option">
						<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210183322/9.png"
							class="nav-img"
							alt="articles">
						<h3 class="bb"> Articles</h3>
					</div>

					<div class="nav-option option3">
						<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210183320/5.png"
							class="nav-img"
							alt="report">
						<h3 class="bb"> Report</h3>
					</div>

					<div class="nav-option option4">
						<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210183321/6.png"
							class="nav-img"
							alt="institution">
						<h3 class="bb"> Institution</h3>
					</div>

					<div class="nav-option option5">
						<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210183323/10.png"
							class="nav-img"
							alt="blog">
						<h3 class="bb"> Profile</h3>
					</div>

					<div class="nav-option option6">
						<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210183320/4.png"
							class="nav-img"
							alt="settings">
						<h3 class="bb"> Settings</h3>
					</div>
					<label class="label11">
					<div class="nav-option logout">			
						
							<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210183321/7.png"
							class="nav-img"
							alt="logout"><asp:Button ID="Button1" value="ahmad" runat="server" OnClick="Button1_Click" /><h3 class="bb">Logout</h3>

					</div></label>
					

			</div>	
			</nav></div>
		
		<div class="main" >

			<div class="searchbar2">
				<input type="text"
					name=""
					id=""
					placeholder="Search">
				<div class="searchbtn">
				<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210180758/Untitled-design-(28).png"
						class="icn srchicn"
						alt="search-button">
				</div>
			</div>
			<div class="box-container">

				<div class="box box1">
					<div class="text">
						<h2 class="topic-heading">60.5k</h2>
						<h2 class="topic">Article Views</h2>
					</div>

					<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210184645/Untitled-design-(31).png"
						alt="Views">
				</div>

				<div class="box box2">
					<div class="text">
						<h2 class="topic-heading">150</h2>
						<h2 class="topic">Likes</h2>
					</div>

					<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210185030/14.png"
						alt="likes">
				</div>

				<div class="box box3">
					<div class="text">
						<h2 class="topic-heading">320</h2>
						<h2 class="topic">Comments</h2>
					</div>

					<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210184645/Untitled-design-(32).png"
						alt="comments">
				</div>

				<div class="box box4">
					<div class="text">
						<h2 class="topic-heading">70</h2>
						<h2 class="topic">Published</h2>
					</div>

					<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210185029/13.png" alt="published">
				</div>
			</div>

			<div class="report-container" >
				<div class="report-header">
					<h1 class="recent-Articles">Recent Articles</h1>
					<input id="Button5" type="button" class="view" value="Add Book" onclick="hide()" />	</div>
				<div class="report-body " >
					<div class="report-topic-heading">
						<h3 class="t-op">UserName</h3>
						<h3 class="t-op">Books Liked</h3>
						<h3 class="t-op">Views</h3>
						<h3 class="t-op">Status</h3>
					</div>
					
                    <div class="items" >
                        <% for (int i = 0; i < x.Rows.Count; i++)
                            { %>
                        <div class="item1">
                            <h3 class="t-op-nextlvl "><%=x.Rows[i][0]%></h3>
                            <h3 class="first "><%=lis[i]%></h3>
                            <h3 class="first">210</h3>
                            <h3 class="t-op-nextlvl lavel-tag"><%=x.Rows[i][1] %></h3>

                        </div>
                        <%} %>
                    </div>
				</div>
			</div>
		</div>
	</div><div id="gg">
			 <div class="container" >
  <div class="title">Add New Item</div>
  <form >
    <div class="user__details">
      <div class="input__box">
        <span class="details">Name of the Book</span>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="E.g:Reading" ></asp:TextBox>
      </div>
		<br /><br />
      <div class="input__box">
        <span class="details">Type</span>
		  <asp:DropDownList ID="DropDownList1" runat="server" required>
			  <asp:ListItem Value="A">Movie Type</asp:ListItem>

             <asp:ListItem Value="B">Science</asp:ListItem>

             <asp:ListItem Value="C">IT</asp:ListItem>
			  <asp:ListItem Value="E">Translation</asp:ListItem>

		  </asp:DropDownList>

      </div>
    </div>

	  <asp:Button ID="Button2" runat="server" Text="Add"  OnClick="Button2_Click1" />

	  <asp:Label ID="Label1" runat="server" ></asp:Label>
     <button class="Button4" runat="server" onClick="window.location.reload();">Back</button>
     

  </form>		

</div></div>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.6.16/sweetalert2.all.min.js" integrity="sha512-4tvE14sHIcdIHl/dUdMHp733PI6MpYA7BDnDfndQmx7aIovEkW+LfkonVO9+NPWP1jYzmrqXJMIT2tECv1TsEQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
			<script type="text/javascript" >
				
				function hide() {
					let x = document.getElementById("items");
					let xx = document.getElementById("gg");
					x.remove();
					xx.style.display = "flex";
					
				}
                let menuicn = document.querySelector(".menuicn");
                let nav = document.querySelector(".navcontainer");

                menuicn.addEventListener("click", () => {
                    nav.classList.toggle("navclose");
                })
			
				function fire(event) {
                    Swal.fire({
                        position: 'top-center',
                        icon: 'success',
                        title: 'Your work has been saved',
                        showConfirmButton: false,
                        timer: 1500
                    })
					hide();


                }
            </script></form>

</body>
</html>



