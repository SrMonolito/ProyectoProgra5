<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GuardarMarcaPage.aspx.cs" Inherits="ProjectoProgra5.Pages.GuardarMarcaPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Registrar Marca</h2>
    <div>
        <div>
            <span>Nombre</span>
            <asp:TextBox ID="TxtNombre" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNombre" runat="server"
                ControlToValidate="TxtNombre"
                ErrorMessage="Esta casilla no puede quedar vacia"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" CssClass="btn btn-primary"
                Style="margin-top: 5px; margin-bottom: 5px;" OnClick="BtnGuardar_Click" />
            <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-primary"
                Style="margin-top: 5px; margin-bottom: 5px;" OnClick="BtnCancelar_Click" />
        </div>
    </div>
</asp:Content>
