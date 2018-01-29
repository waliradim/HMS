<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajaxtest.aspx.cs" Inherits="HMS.ajaxtest" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Label ID="Label1" runat="server" Text="Enter Date"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div><asp:Repeater ID="RepeaterPatient" runat="server">
                                <ItemTemplate>
                                    <table>
                                        <tr>
                                            <td colspan="2">
                                                <table style="width:800px; height:120px;">
                                                    <tr>
                                                        <td colspan="2" align="center">
                                                            <h3>Paitient History</h3>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Symptoms:
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblsymptoms" runat="server" Text='<%#Eval("Symptoms") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Diagnosis Provid:</td>
                                                        <td>
                                                            <asp:Label ID="lblDosProvid" runat="server" Text='<%#Eval("DiagnosisProvided") %>'></asp:Label> </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Bill: </td>
                                                        <td>
                                                            <asp:Label ID="lblBill" runat="server" Text='<%#Eval("DiagnosisProvided") %>'></asp:Label> </td>
                                                    </tr>
                                                     <tr>
                                                        <td></td>
                                                        <td>
                                                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("DiagnosisProvided") %>'></asp:Label> </td>
                                                    </tr>
                                                     <tr>
                                                        <td></td>
                                                        <td>
                                                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("DiagnosisProvided") %>'></asp:Label> </td>
                                                    </tr>
                                                     <tr>
                                                        <td></td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("DiagnosisProvided") %>'></asp:Label> </td>
                                                    </tr>
                                                     <tr>
                                                        <td></td>
                                                        <td> <asp:Label ID="Label4" runat="server" Text='<%#Eval("DiagnosisProvided") %>'></asp:Label></td>
                                                    </tr>
                                                     <tr>
                                                        <td></td>
                                                        <td>
                                                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("DiagnosisProvided") %>'></asp:Label> </td>
                                                    </tr>
                                                     <tr>
                                                        <td></td>
                                                        <td>
                                                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("DiagnosisProvided") %>'></asp:Label> </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:Repeater></div>
    </form>
</body>
</html>
