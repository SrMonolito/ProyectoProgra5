<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExitoPage.aspx.cs" Inherits="ProjectoProgra5.Pages.ExitoPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Proceso Completado</h2>
    <p>El proceso fue completado con exito</p>
    <asp:Button ID="BtnVolver" runat="server" Text="Volver" Style="margin-top: 5px; margin-bottom: 5px;"
    CssClass="btn btn-primary" OnClick="BtnVolver_Click" />
</asp:Content>
