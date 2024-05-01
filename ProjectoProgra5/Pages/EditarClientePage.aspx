<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarClientePage.aspx.cs" Inherits="ProjectoProgra5.Pages.EditarClientePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Registrar Cliente</h2>

    <div>
        <div>
            <span>Identificador del Cliente</span>
            <asp:TextBox ID="TxtId" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvId" runat="server"
                ControlToValidate="TxtId"
                ErrorMessage="Esta casilla no puede quedar vacia"></asp:RequiredFieldValidator>
        </div>
        <div>
            <span>Nombre del Cliente</span>
            <asp:TextBox ID="TxtNombre" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNombre" runat="server"
                ControlToValidate="TxtNombre"
                ErrorMessage="Esta casilla no puede quedar vacia"></asp:RequiredFieldValidator>
        </div>
        <div>
            <span>Apellidos del Cliente</span>
            <asp:TextBox ID="TxtApellidos" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvApellidos" runat="server"
                ControlToValidate="TxtApellidos"
                ErrorMessage="Esta casilla no puede quedar vacia"></asp:RequiredFieldValidator>
        </div>
        <div>
            <span>Cedula del Cliente</span>
            <asp:TextBox ID="TxtCedula" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCedula" runat="server"
                ControlToValidate="TxtCedula"
                ErrorMessage="Esta casilla no puede quedar vacia"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RevCedulaformat" runat="server"
                ControlToValidate="TxtTelefono"
                ErrorMessage="Por favor ingrese una cedula valida"
                ValidationExpression="\d+"></asp:RegularExpressionValidator>
        </div>
        <div>
            <span>Telefono del Cliente</span>
            <asp:TextBox ID="TxtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvTelefono" runat="server"
                ControlToValidate="TxtTelefono"
                ErrorMessage="Esta casilla no puede quedar vacia"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RevTelefonoformat" runat="server"
                ControlToValidate="TxtTelefono"
                ErrorMessage="Por favor ingrese un numero valido"
                ValidationExpression="\d+"></asp:RegularExpressionValidator>
        </div>
        <div>
            <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" CssClass="btn btn-primary"
                Style="margin-top: 5px; margin-bottom: 5px;" OnClick="BtnGuardar_Click" />
            <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-primary"
                Style="margin-top: 5px; margin-bottom: 5px;" OnClick="BtnCancelar_Click" />
        </div>

    </div>

</asp:Content>
