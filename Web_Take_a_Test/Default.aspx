<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Web_Take_a_Test._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <div style="height: 427px; width: 933px;">
        <asp:Panel ID="Panel1_Login" runat="server" Style="z-index: 1; left: 793px; top: 206px;
            position: absolute; height: 173px; width: 228px">
            <asp:Label ID="UsernameL" runat="server" Style="z-index: 1; left: 20px; top: 29px;
                position: absolute; height: 19px; width: 86px" Text="UserName :"></asp:Label>
            <asp:Label ID="PasswordL" runat="server" Style="z-index: 1; left: 20px; top: 71px;
                position: absolute; height: 18px; width: 86px" Text="Password :"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 1; left: 100px; top: 30px;
                position: absolute; height: 18px; width: 120px">
            </asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 1; left: 100px; top: 71px;
                position: absolute; height: 18px; width: 120px" TextMode="Password"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Style="z-index: 1; left: 116px; top: 115px;
                position: absolute; width: 75px" Text="Login" OnClick="Button1_Click" />
        </asp:Panel>
        <asp:Panel ID="Panel2_Register" runat="server" Height="345px" Width="585px">
            <h1>
                Dont have an account ??? Register Below
            </h1>
            <%--<style="z-index: 1; right: 104px; top: 145px; position: absolute; height: 171px; width:292px">
            --%>
            <asp:Label ID="Label1" runat="server" Style="text-align: center; z-index: 1; left: 239px;
                top: 184px; position: absolute; width: 84px;" Text="FirstName"></asp:Label>
            <asp:Label ID="Label2" runat="server" Style="text-align: center; z-index: 1; left: 237px;
                top: 226px; position: absolute; width: 84px;" Text="LastName"></asp:Label>
            <asp:Label ID="Label3" runat="server" Style="text-align: center; z-index: 1; left: 239px;
                top: 269px; position: absolute; width: 84px;" Text="UserName"></asp:Label>
            <asp:Label ID="Label4" runat="server" Style="text-align: center; z-index: 1; left: 237px;
                top: 312px; position: absolute; width: 84px;" Text="Password"></asp:Label>
            <asp:Label ID="Label5" runat="server" Style="text-align: center; z-index: 1; left: 237px;
                top: 364px; position: absolute; width: 84px;" Text="ConfirmPassword"></asp:Label>
            <asp:Button ID="Button2" runat="server" Style="z-index: 1; left: 340px; top: 419px;
                position: absolute; height: 26px;" Text="Register" OnClick="Button2_Click" />
            <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 1; left: 383px; top: 184px;
                position: absolute"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 1; left: 382px; top: 226px;
                position: absolute"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 1; left: 384px; top: 269px;
                position: absolute"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 1; left: 383px; top: 312px;
                position: absolute" TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" Style="z-index: 1; left: 381px; top: 363px;
                position: absolute" TextMode="Password"></asp:TextBox>
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Blank"
                Style="z-index: 1; left: 576px; top: 186px; position: absolute" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Blank"
                Style="z-index: 1; left: 576px; top: 226px; position: absolute" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Blank"
                Style="z-index: 1; left: 576px; top: 270px; position: absolute" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Plz enter your password"
                Style="z-index: 1; left: 573px; top: 315px; position: absolute" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Plz Confirm your password"
                Style="z-index: 1; left: 574px; top: 367px; position: absolute" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>--%>
            <%--<asp:Label ID="Label6" runat="server" Text="Label" 
                style="z-index: 1; left: 92px; top: 489px; position: absolute" ></asp:Label>--%>
        </asp:Panel>
    </div>

    <%--<h2>
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

            <asp:Panel ID="Panel1_Login0" runat="server"                                            
                
                
                
                
                
                style="z-index: 1; left: 377px; top: 217px; position: absolute; height: 130px; width:260px; border-top-style: solid; border-top-color: #696969; border-bottom-style: solid; border-bottom-color: #696969;">
                

                <asp:Label ID="UsernameL1" runat="server" 
                    style="z-index: 1; left: 10px; top: 21px; position: absolute; height: 19px; width: 86px" 
                    Text="UserName :"></asp:Label>                
                <asp:Label ID="PasswordL1" runat="server" 
                    style="z-index: 1; left: 20px; top: 50px; position: absolute; height: 18px; width: 86px" 
                    Text="Password :"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"
                    
                    
                    style="z-index: 1; left: 101px; top: 22px; position: absolute; height: 18px; width: 120px"></asp:TextBox>
                <asp:TextBox ID="TextBox4" runat="server"
                    
                    style="z-index: 1; left: 100px; top: 50px; position: absolute; height: 18px; width: 120px" 
                    TextMode="Password"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" 
                    style="border-style: solid; border-color: #333333; z-index: 1; left: 103px; top: 87px; position: absolute; height: 38px; width: 118px; color: #FFFFFF; font-size: medium; font-family: 'Segoe UI Semilight'; background-color: #999999;" 
                    Text="Register" onclick="Button2_Click" />

                             
            </asp:Panel>

        </div>
>>>>>>> d9fe89f22a633dc65ac90b36443e2d10269f6086
</asp:Content>
--%>

</asp:Content>