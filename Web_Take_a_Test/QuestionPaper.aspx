<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="QuestionPaper.aspx.cs" Inherits="Web_Take_a_Test.QuestionPaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<asp:Panel ID="QuestionPanel" runat="server" Wrap="True" Height="500" Width="500" 
        BorderColor="Black" BorderStyle="Dashed" 
        style="position: absolute; z-index: 1; left: 10%; top: 125px; height: 500px; width: 80%">
    <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 13px; top: 16px; position: absolute; height: 17px;" 
        Text="QUESTION PLACE HOLDER" Font-Bold="True"></asp:Label>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
        RepeatDirection="Horizontal" 
        style="z-index: 1; left: 140px; top: 126px; position: absolute; height: 147px; width: 80%; margin-bottom: 101px">
        <asp:ListItem Value="0">
            
        </asp:ListItem>
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
        <asp:ListItem Value="3"></asp:ListItem>
    </asp:RadioButtonList>
</asp:Panel>

</asp:Content>
