<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GuardarClientePage.aspx.cs" Inherits="ProjectoProgra5.Pages.GuardarClientePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Registrar Cliente</h2>

    <div>
        <div>
            <span>Nombre del Cliente</span>
            <asp:TextBox ID="TxtNombre" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <span>Apellidos del Cliente</span>
            <asp:TextBox ID="TxtApellidos" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <span>Cedula del Cliente</span>
            <asp:TextBox ID="TxtCedula" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <span>Telefono del Cliente</span>
            <asp:TextBox ID="TxtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" CssClass="btn btn-primary"
                Style="margin-top: 5px; margin-bottom: 5px;" OnClick="BtnGuardar_Click" />
            <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-primary"
                Style="margin-top: 5px; margin-bottom: 5px;" OnClick="BtnCancelar_Click" />
        </div>

    </div>

</asp:Content>
