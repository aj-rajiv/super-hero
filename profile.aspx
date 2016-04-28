<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color:Aqua">
    <h1 align="center" style="color:White">WELCOME
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
            Text="LOGOUT" onclick="Button1_Click" />
&nbsp;<asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="Large" 
            Text="DEACTIVATE ACCOUNT" onclick="Button4_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
<br />
    <table align="center">
    <tr><td>
        <asp:Label ID="Label2" runat="server" Text="STATUS" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="White"></asp:Label></td><td>
            <asp:TextBox ID="TextBox1" runat="server" Height="100px" TextMode="MultiLine" 
                Width="400px"></asp:TextBox></td></tr>
    </table>  
    <table align="center">
    <tr><td>
        <asp:Button ID="Button2" runat="server" Text="POST" Font-Bold="True" 
            Font-Size="XX-Large" onclick="Button2_Click" /></td></tr>
    </table>
      <br />

        <table align="center">
    <tr><td>
        <asp:Button ID="Button3" runat="server" Text="VIEW THE USER REQUESTS" 
            Font-Bold="True" Font-Size="XX-Large" onclick="Button3_Click" /></td></tr>
            <tr><td>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td></tr>
    </table>
    <br />
    <h1 align="center" style="color:White">CHANGE PASSWORD</h1>
    <br />
    <table  align="center">
    <tr><td style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #FFFFFF">
        <asp:Label ID="Label3" runat="server" Text="OLD PASSWORD"></asp:Label>
        </td><td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td></tr>
     <tr><td class="style1" 
             style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #FFFFFF">
         <asp:Label ID="Label4" runat="server" Text="NEW PASSWORD"></asp:Label>
         </td><td class="style1">
             <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
         </td></tr>
      <tr><td style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #FFFFFF">
          <asp:Label ID="Label5" runat="server" Text="CONFIRM NEW PASSWORD"></asp:Label>
          </td><td>
              <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
          </td></tr>
       <tr><td>
           <asp:Button ID="Button5" runat="server" Font-Bold="True" Font-Size="Large" 
               Text="SUBMIT" onclick="Button5_Click" />
           </td><td>
               <asp:Button ID="Button6" runat="server" Font-Bold="True" Font-Size="Large" 
                   Text="RESET" onclick="Button6_Click" />
           </td></tr>
    </table>
   

    </div>
    
    </form>

</body>
</html>
