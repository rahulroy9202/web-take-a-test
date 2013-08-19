<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Web_Take_a_Test._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Take a Test</h2>
        <div style="height: 346px">

            <asp:Panel ID="Panel1_Login" runat="server"                                            
                
                
                
                
                style="z-index: 1; left: 707px; top: 217px; position: absolute; height: 130px; width:260px; border-top-style: solid; border-top-color: #696969; border-bottom-style: solid; border-bottom-color: #696969;">
                

                <asp:Label ID="UsernameL" runat="server" 
                    style="z-index: 1; left: 10px; top: 21px; position: absolute; height: 19px; width: 86px" 
                    Text="UserName :"></asp:Label>                
                <asp:Label ID="PasswordL" runat="server" 
                    style="z-index: 1; left: 20px; top: 50px; position: absolute; height: 18px; width: 86px" 
                    Text="Password :"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"
                    
                    style="z-index: 1; left: 101px; top: 22px; position: absolute; height: 18px; width: 120px">
                    </asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server"
                    
                    style="z-index: 1; left: 100px; top: 50px; position: absolute; height: 18px; width: 120px" 
                    TextMode="Password"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" 
                    style="border-style: solid; border-color: #333333; z-index: 1; left: 103px; top: 87px; position: absolute; height: 38px; width: 118px; color: #FFFFFF; font-size: medium; font-family: 'Segoe UI Semilight'; background-color: #999999;" 
                    Text="Login" onclick="Button1_Click" />

                             
            </asp:Panel>

                <asp:Button ID="Button2" runat="server" 
                    style="border-style: solid; border-color: #333333; z-index: 1; left: 404px; top: 306px; position: absolute; height: 38px; width: 125px; color: #FFFFFF; font-size: medium; font-family: 'Segoe UI Semilight'; background-color: #999999;" 
                    Text="Register" onclick="Button2_Click" />

                             
                <asp:Label ID="UsernameL0" runat="server" 
                    style="z-index: 1; left: 377px; top: 238px; position: absolute; height: 19px; width: 86px" 
                    Text="UserName :"></asp:Label>                
                <asp:Label ID="PasswordL0" runat="server" 
                    style="z-index: 1; left: 382px; top: 269px; position: absolute; height: 18px; width: 86px" 
                    Text="Password :"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"
                    
                    
                
                
                style="z-index: 1; left: 480px; top: 241px; position: absolute; height: 18px; width: 120px">
                    </asp:TextBox>
                <asp:TextBox ID="TextBox4" runat="server"
                    
                    
                
                style="z-index: 1; left: 479px; top: 271px; position: absolute; height: 19px; width: 120px" 
                TextMode="Password"></asp:TextBox>

            <asp:Panel ID="Panel1" runat="server" 
                style="z-index: 1; left: 325px; top: 217px; position: absolute; height: 131px; width: 284px; border-top-style: solid; border-top-color: #666666; border-bottom-style: solid; border-bottom-color: #666666">
            </asp:Panel>

        </div>
</asp:Content>
