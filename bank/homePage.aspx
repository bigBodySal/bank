<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="bank.homePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>

   <meta name="viewport" content="width=device-width, initial-scale=1"/>

   <link rel="stylesheet" href="/Content/bootstrap.min.css"  runat="server"/>

   <script src="bootstrap.min.js"></script>

   
    <title>The Bank</title>
    <style type="text/css">
        .auto-style1 {
            width: auto;
            height: 376px;
            margin-left: 67px;
        }
        .auto-style2 {
            margin-left: 497px;
        }
        .auto-style3 {
            margin-left: 496px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ul class = "nav">
	<li><a href = "homePage.aspx">Home</a></li>
	<li><a href = "about.aspx">About</a></li>
	<li><a href = "Careers.aspx">Careers</a></li>
	<li><a href = "contact.aspx">Contact</a></li>
		
  
  </ul>

        <div class="auto-style1" style="margin: 20px; padding: 50px; background-color: #FFFFFF; ">
            <asp:Label ID="Label1" runat="server" Font-Names="Century Gothic" Font-Size="XX-Large" ForeColor="#666666" Text="The Bank"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="The Bank is the best place for all your online banking needs. Our representatives are standing by to assist you every step of the way! Please login or sign up to become a member today!" Font-Size="Large" ForeColor="#666666"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Ridge" CssClass="auto-style2" Font-Names="Century Gothic" ForeColor="#CCCCCC" Width="314px">username</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Ridge" CssClass="auto-style2" Font-Names="Century Gothic" ForeColor="#CCCCCC" Width="314px">password</asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="DeepSkyBlue" CssClass="auto-style3" Font-Names="Century Gothic" ForeColor="White" Height="40px" OnClick="Button1_Click" Text="login" Width="160px" />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>

    </body>
</html>
