<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="ProjectoProgra5.Pages.Error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Proceso Cancelado</h2>
    <p>Ocurrio un error durante la ejecucion del proceso</p>

    <asp:Button ID="BtnVolver" runat="server" Text="Volver" OnClick="BtnVolver_Click"/>

</asp:Content>
