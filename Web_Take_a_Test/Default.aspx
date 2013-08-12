<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Web_Take_a_Test._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Take a Test</h2>
        <div style="height: 346px">

            <asp:Panel ID="Panel1_Login" runat="server"                                            
                
                style="z-index: 1; left: 436px; top: 264px; position: absolute; height: 130px; width:260px">
                

                <asp:Label ID="UsernameL" runat="server" 
                    style="z-index: 1; left: 20px; top: 20px; position: absolute; height: 19px; width: 86px" 
                    Text="UserName :"></asp:Label>                
                <asp:Label ID="PasswordL" runat="server" 
                    style="z-index: 1; left: 20px; top: 50px; position: absolute; height: 18px; width: 86px" 
                    Text="Password :"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"
                    style="z-index: 1; left: 100px; top: 20px; position: absolute; height: 18px; width: 120px">
                    </asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server"
                    style="z-index: 1; left: 100px; top: 50px; position: absolute; height: 18px; width: 120px">
                    </asp:TextBox>
                <asp:Button ID="Button1" runat="server" 
                    style="z-index: 1; left: 151px; top: 87px; position: absolute; height: 26px; width: 75px" 
                    Text="Login" onclick="Button1_Click" />

                             
            </asp:Panel>

        </div>
</asp:Content>
