<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarModeloPage.aspx.cs" Inherits="ProjectoProgra5.Pages.EditarModeloPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Registrar Modelo</h2>

    <div>
        <span>Identificador del Modelo</span>
        <asp:TextBox ID="TxtId" runat="server" CssClass="form-control"
            Style="margin-top: 5px; margin-bottom: 5px;" Enabled="False"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvId" runat="server"
            ControlToValidate="TxtId"
            ErrorMessage="Esta casilla no puede quedar vacia"></asp:RequiredFieldValidator>
    </div>
    <div>
        <span>Nombre del Modelo</span>
        <asp:TextBox ID="TxtModeloNombre" runat="server" CssClass="form-control"
            Style="margin-top: 5px; margin-bottom: 5px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvModeloNombre" runat="server"
            ControlToValidate="TxtModeloNombre"
            ErrorMessage="Esta casilla no puede quedar vacia"></asp:RequiredFieldValidator>
    </div>
    <div>
        <span>Especificaciones</span>
        <asp:TextBox ID="TxtEspecificaciones" runat="server" CssClass="form-control"
            Style="margin-top: 5px; margin-bottom: 5px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEspecificaciones" runat="server"
            ControlToValidate="TxtEspecificaciones"
            ErrorMessage="Esta casilla no puede quedar vacia"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" CssClass="btn btn-primary"
            Style="margin-top: 5px; margin-bottom: 5px;" OnClick="BtnGuardar_Click" />
        <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-primary"
            Style="margin-top: 5px; margin-bottom: 5px;" OnClick="BtnCancelar_Click" />
    </div>
</asp:Content>
