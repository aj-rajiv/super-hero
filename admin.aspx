<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="background-color:Aqua">
    <h1 style="font-family: Algerian; font-size: xx-large; font-weight: bolder">SUPERHERO TO THE RESCUE</h1>
    <br />
    <h2 style="font-family: Algerian; font-size: x-large; font-weight: bold">ABOUT US</h2>
    <br />
    <p align="center" style="color:White;font-size: x-large; font-weight: bold">
    
        Our main mission is to collect details about the people and the natural 
        calamities they are affected with such as floods,earthquakes,tsunami and so 
        on.Once we receive your request our volunteers will reach your place as soon as 
        possible and perform their rescue operation.We even provide free membership to 
        people so that they can join and help us with our operations.You may even get 
        rewards based on your hard work and dedication.</p>
    <br />
    <h2 style="font-family: Algerian; font-size: x-large; font-weight: bold">ADMIN LOGIN</h2>
    <br />
    <table>
    <tr><td style="font-family: 'Times New Roman', Times, serif; font-size: larger; font-weight: bold; color: #FFFFFF">
        <asp:Label ID="Label1" runat="server" Text="USERNAME"></asp:Label>
        </td><td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td></tr>
      <tr><td style="font-family: 'Times New Roman', Times, serif; font-size: larger; font-weight: bold; color: #FFFFFF">
          <asp:Label ID="Label2" runat="server" Text="PASSWORD"></asp:Label>
          </td><td>
              <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
          </td></tr>
       
            <tr><td>
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="SUBMIT" onclick="Button1_Click" />
                </td><td>
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" 
                        Text="RESET" onclick="Button2_Click" />
                </td></tr>
    </table>
    
    </form>
</body>
</html>
