<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="QuestionPaper.aspx.cs" Inherits="Web_Take_a_Test.QuestionPaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<asp:Panel ID="Question_Paper_Panel" runat="server" Wrap="True"         
        
        style="position: absolute; z-index: 1; left: 10%; top: 125px; height: 425px; width: 73%">
    

    <asp:Panel ID="Questions_Panel" runat="server" Wrap="True"                 
        
        style="position: absolute; z-index: 1; top: 12px; left: 9px; height: 205px; width: 683px;">
        <asp:Label ID="Label1_question" runat="server" 
        style="z-index: 1; left: 69px; top: 16px; position: absolute; height: 17px;" 
            Text="QUESTION PLACE HOLDER" Font-Bold="True"></asp:Label>
        <asp:Label ID="ques_no" runat="server"         
            style="z-index: 1; left: 21px; top: 16px; position: absolute; height: 17px; font-weight: 700;" ></asp:Label>
    </asp:Panel>


    <asp:Panel ID="Options_Panel" runat="server" Wrap="True" Height="200" Width="450"                 
        style="position: absolute; z-index: 1; left: 11%; top: 231px; height: 100px; width: 80%">
        <asp:RadioButton ID="RadioButton2" runat="server"                     
            style="position: absolute; z-index: 1; left: 20px; top: 67px; font-weight: 700;" />
        <asp:RadioButton ID="RadioButton1" runat="server" 
            style="position: absolute; z-index: 1; left: 20px; top: 10px" 
            CssClass="bold" />
        <asp:RadioButton ID="RadioButton3" runat="server" 
            style="position: absolute; z-index: 1; left: 400px; top: 10px" 
            CssClass="bold" />
        <asp:RadioButton ID="RadioButton4" runat="server" 
            style="position: absolute; z-index: 1; left: 400px; top: 67px" 
            CssClass="bold" />
     </asp:Panel>   
    
        
</asp:Panel>

</asp:Content>
