<%@ Page Title="" Language="C#" MasterPageFile="~/HMS.Master" AutoEventWireup="true" CodeBehind="PatientHistory.aspx.cs" Inherits="HMS.page.PatientHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHleft" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHrightmain" runat="server">

    
            <div align="center">
                <table style="width:100%; margin-top:25px;">
                    <tr>
                        <td>
                            <asp:TextBox ID="txtId" runat="server" CssClass="" Placeholder="Search by id.." Width="200px" Height="40px" BorderStyle="Solid" Rows="1"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="REVid" runat="server" ControlToValidate="txtId" ErrorMessage="Invalid Id" ForeColor="#CC0000" ValidationExpression="^[0-9]+$" ValidationGroup="patientsearch"></asp:RegularExpressionValidator>
                            <br />
                        </td>
                        
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;</td>
                    </tr>
                    <br />
                    <tr>
                        <td>
                            <asp:TextBox ID="txtname" runat="server" Placeholder="Search by Name.." Width="200px" BorderStyle="Solid" Height="40px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="REVname" runat="server" ControlToValidate="txtname" ErrorMessage="Invalid Name" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="patientsearch" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                            <br />
                        </td>
                    </tr>
                     <tr>
                        <td>&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btn_search" runat="server" Text="Search" OnClick="btn_search_Click" ValidationGroup="patientsearch" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btn_reset" runat="server" Text="Reset" OnClick="btn_reset_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>

                </table>
                
                <table style="width: 100%; margin-top: 50px" align="center">
                    <tr align="center">
                        <td>
                            <asp:Label ID="lblshow" runat="server" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
                            <asp:GridView ID="GridView" runat="server"></asp:GridView>
                        </td>
                    </tr>
                </table>

            </div>
       

</asp:Content>
