<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="QuestionPaper.aspx.cs" Inherits="Web_Take_a_Test.QuestionPaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<asp:Panel ID="Question_Paper_Panel" runat="server" Wrap="True"         
        
        
        style="position: absolute; z-index: 1; left: 0%; top: 125px; height: 381px; width: 60%">
    

    <asp:Panel ID="Questions_Panel" runat="server" Wrap="True"                         
        style="position: absolute; z-index: 1; top: 10%; left: 10%; height: 205px; width: 80%;">
        <asp:Label ID="Label1_question" runat="server" 
        style="z-index: 1; left: 45px; top: 16px; position: absolute; height: 17px;" 
            Text="QUESTION PLACE HOLDER" Font-Bold="True"></asp:Label>
        <asp:Label ID="ques_no" runat="server"         
            
            style="z-index: 1; left: 20px; top: 16px; position: absolute; height: 17px; font-weight: 700;" 
            Font-Bold="True" ></asp:Label>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    </asp:Panel>


    <asp:Panel ID="Options_Panel" runat="server" Wrap="True" Height="200" Width="450"                 
        style="position: absolute; z-index: 1; left: 10%; top: 60%; height: 100px; width: 80%">
               
        <asp:RadioButton ID="RadioButton2" runat="server"                                
            style="position: absolute; z-index: 1; left: 10%; top: 50%; font-weight: 700;" 
            oncheckedchanged="radioButton_CheckedChanged" TabIndex="2" AutoPostBack=true />
        <asp:RadioButton ID="RadioButton1" runat="server" 
            style="position: absolute; z-index: 1; left: 10%; top: 10px" 
            CssClass="bold" oncheckedchanged="radioButton_CheckedChanged" 
            TabIndex="1"  AutoPostBack=true/>
        <asp:RadioButton ID="RadioButton3" runat="server" 
            style="position: absolute; z-index: 1; left: 80%; top: 10px" 
            CssClass="bold" oncheckedchanged="radioButton_CheckedChanged" 
            TabIndex="3" AutoPostBack=true />
        <asp:RadioButton ID="RadioButton4" runat="server" 
            style="position: absolute; z-index: 1; left: 80%; top: 50%" 
            CssClass="bold" oncheckedchanged="radioButton_CheckedChanged" 
            TabIndex="4" AutoPostBack=true />
            
     </asp:Panel>   
    

    <asp:Panel ID="Question_navigation_Panel" runat="server" Wrap="True" 
        
        style="z-index: 1; left: 10%; top: 90%; position: absolute; height: 30px; width: 80%" >
        
        <asp:Button ID="PreviousB" runat="server" Text="Previous" Height="30px" 
            Width="80px" style="z-index: 1; left: 0%; top: 0px; position: absolute" 
            onclick="PreviousB_Click" />
        <asp:Button ID="NextB" runat="server" Text="Next" Height="30px" 
            Width="80px" 
            style="z-index: 1; left: 15%; top: 0px; position: absolute" 
            onclick="NextB_Click" />
        <asp:Button ID="SummaryB" runat="server" Text="Review" Height="30px" 
            Width="80px" 
            style="z-index: 1; left: 70%; top: 0px; position: absolute" 
            onclick="SummaryB_Click" />
        <asp:Button ID="FinishB" runat="server" Text="Submit" Height="30px" 
            Width="15%" 
            style="z-index: 1; left: 85%; top: 0px; position: absolute" 
            onclick="FinishB_Click" />
    
    </asp:Panel>

    
    

        
</asp:Panel>

</asp:Content>
