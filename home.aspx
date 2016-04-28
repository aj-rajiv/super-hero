<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

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
    
        Our main mission is to collect details about the people and the 
        natural calamities they are affected with such as floods,earthquakes,tsunami and 
        so on.Once we receive your request our volunteers will reach your place as soon 
        as possible and perform their rescue operation.We even provide free membership 
        to people who are willing to join and help us in our operations.You may even get 
        rewards based on your hard work and dedication.</p>
    <br />
    <h2 style="font-family: Algerian; font-size: x-large; font-weight: bold">REGISTER YOUR NEEDS</h2>
    <br />
    <table>
    <tr><td style="font-family: 'Times New Roman', Times, serif; font-size: larger; font-weight: bold; color: #FFFFFF">
        <asp:Label ID="Label1" runat="server" Text="NAME"></asp:Label>
        </td><td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td></tr>
      <tr><td style="font-family: 'Times New Roman', Times, serif; font-size: larger; font-weight: bold; color: #FFFFFF">
          <asp:Label ID="Label2" runat="server" Text="ADDRESS/CITY"></asp:Label>
          </td><td>
              <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
          </td></tr>
        <tr><td style="font-family: 'Times New Roman', Times, serif; font-size: larger; font-weight: bold; color: #FFFFFF">
            <asp:Label ID="Label3" runat="server" Text="PHONE"></asp:Label>
            </td><td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td></tr>
          <tr><td style="font-family: 'Times New Roman', Times, serif; font-size: larger; font-weight: bold; color: #FFFFFF">
              <asp:Label ID="Label4" runat="server" Text="EMAIL"></asp:Label>
              </td><td>
                  <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
              </td></tr>
            <tr><td style="font-family: 'Times New Roman', Times, serif; font-size: larger; font-weight: bold; color: #FFFFFF">
                <asp:Label ID="Label5" runat="server" Text="POST "></asp:Label>
                </td><td>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" placeholder="post your problem here"></asp:TextBox>
                </td></tr>
            <tr style="font-family: Algerian; font-size: large; font-weight: bold"><td>
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="SUBMIT" onclick="Button1_Click" />
                </td><td>
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" 
                        Text="RESET" onclick="Button2_Click" />
                </td></tr>
    </table>
    <br />
    <h2>Want to become a volunteer of our group??Then register below</h2>
    <br />
    <table>
    <tr><td style="font-size: large; color: #FFFFFF; font-weight: bold;">
        <asp:Label ID="Label6" runat="server" Text="USERNAME"></asp:Label>
        </td><td style="font-size: large; color: #FFFFFF;">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="White" Text="D.O.B"></asp:Label>
            </td><td>
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/i1.JPG" 
                    onclick="ImageButton1_Click" />
&nbsp;<asp:Calendar ID="Calendar1" runat="server" 
                    onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
&nbsp;&nbsp;&nbsp; </td></tr>
    <tr><td style="font-size: large; color: #FFFFFF; font-weight: bold;">
        <asp:Label ID="Label7" runat="server" Text="ADDRESS"></asp:Label>
        </td><td style="font-size: large; color: #FFFFFF;">
            <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td></tr>
    <tr><td style="font-size: large; color: #FFFFFF; font-weight: bold;">
        <asp:Label ID="Label8" runat="server" Text="PHONE"></asp:Label>
        </td><td style="font-size: large; color: #FFFFFF;">
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td></tr>
    <tr><td style="font-size: large; color: #FFFFFF; font-weight: bold;">
        <asp:Label ID="Label9" runat="server" Text="EMAIL"></asp:Label>
        </td><td style="font-size: large; color: #FFFFFF;">
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox9" ErrorMessage="*invalid email format" 
                ForeColor="#FF3300" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td></tr>
    <tr><td style="font-size: large; color: #FFFFFF; font-weight: bold;">
        <asp:Label ID="Label10" runat="server" Text="PASSWORD"></asp:Label>
        </td><td style="font-size: large; color: #FFFFFF;">
            <asp:TextBox ID="TextBox10" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox10" 
                ErrorMessage="*password should contain atleast 1 uppercase,lowercase.numeric and special character and minimum 8 characters " 
                ForeColor="#FF3300" 
                
                ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&amp;])[A-Za-z\d$@$!%*?&amp;]{8,}"></asp:RegularExpressionValidator>
        </td></tr>
    <tr><td style="font-size: large; color: #FFFFFF; font-weight: bold;">
        <asp:Label ID="Label11" runat="server" Text="CONFIRM PASSWORD"></asp:Label>
        </td><td style="font-size: large; color: #FFFFFF;">
            <asp:TextBox ID="TextBox11" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox10" ControlToValidate="TextBox11" 
                ErrorMessage="*passwords does not match" ForeColor="#FF3300"></asp:CompareValidator>
        </td></tr>
    <tr><td>
        <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="Large" 
            Text="SUBMIT" onclick="Button3_Click" />
        </td><td>
            <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="Large" 
                Text="RESET" onclick="Button4_Click" />
        </td></tr>
    </table>
    <br />
    <h2 style="font-family: Algerian; font-size: x-large; font-weight: bold">LOGIN</h2>
    <br />
    <table>
    <tr><td style="font-family: 'Times New Roman', Times, serif; font-size: larger; font-weight: bold; color: #FFFFFF">
        <asp:Label ID="Label12" runat="server" Text="USERNAME"></asp:Label>
        </td><td>
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        </td></tr>
        
    <tr><td style="font-family: 'Times New Roman', Times, serif; font-size: larger; font-weight: bold; color: #FFFFFF">
        <asp:Label ID="Label13" runat="server" Text="PASSWORD"></asp:Label>
        </td><td>
            <asp:TextBox ID="TextBox13" runat="server" TextMode="Password"></asp:TextBox>
        </td></tr>
    <tr><td>
        <asp:Button ID="Button5" runat="server" Font-Bold="True" Font-Size="Large" 
            Text="SUBMIT" onclick="Button5_Click" />
        </td><td>
            <asp:Button ID="Button6" runat="server" Font-Bold="True" Font-Size="Large" 
                Text="RESET" onclick="Button6_Click" />
        </td></tr>
    </table>
    <br />
    <h1 style="color:#000000; font-family: Algerian; font-size: x-large; font-weight: bold;">FORGOT PASSWORD??JUST TYPE THE DETAILS BELOW</h1>
    <br />
    <br />
    <table>
    <tr><td>
        <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="White" Text="USERNAME"></asp:Label>
        </td><td>
            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
        </td></tr>
    <tr><td>
        <asp:Label ID="Label15" runat="server" Text="EMAIL" Font-Bold="True" 
            Font-Size="Large" ForeColor="White"></asp:Label></td><td>
            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox></td></tr>
            
    <tr><td>
        &nbsp;</td><td>
            <asp:Button ID="Button7" runat="server" Text="SUBMIT" Font-Bold="True" 
                Font-Size="Large" onclick="Button7_Click" /></td></tr>
    </table>
    <br />
    </div>
    </form>
</body>
</html>
