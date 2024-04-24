<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GuardarProductoPage.aspx.cs" Inherits="ProjectoProgra5.Pages.GuardarProductoPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Registrar Producto</h2>

    <div>
        <div>
            <span>Nombre del Producto</span>
            <asp:TextBox ID="TxtProductoNombre" runat="server" CssClass="form-control"
                Style="margin-top: 5px; margin-bottom: 5px;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNombreProducto" runat="server"
                ControlToValidate="TxtProductoNombre"
                ErrorMessage="Esta casilla no puede quedar vacia"></asp:RequiredFieldValidator>
        </div>
        <div>
            <span>Identificador del Modelo</span>
            <asp:TextBox ID="TxtidModelo" runat="server" CssClass="form-control"
                Style="margin-top: 5px; margin-bottom: 5px;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvModelo" runat="server"
                ControlToValidate="TxtidModelo"
                ErrorMessage="Esta casilla no puede quedar vacia"></asp:RequiredFieldValidator>
        </div>
        <div>
            <span>Marca</span>
            <asp:DropDownList ID="DdLMarcas" runat="server"></asp:DropDownList>
        </div>
        <div>
            <span>Cantidad</span>
            <asp:TextBox ID="TxtCantidad" runat="server" CssClass="form-control"
                Style="margin-top: 5px; margin-bottom: 5px;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCantidad" runat="server"
                ControlToValidate="TxtCantidad"
                ErrorMessage="Esta casilla no puede quedar vacia"></asp:RequiredFieldValidator>
        </div>
        <div>
            <span>Precio por Unidad</span>
            <asp:TextBox ID="TxtPrecioU" runat="server" CssClass="form-control"
                Style="margin-top: 5px; margin-bottom: 5px;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPrecioUnidad" runat="server"
                ControlToValidate="TxtPrecioU"
                ErrorMessage="Esta casilla no puede quedar vacia"></asp:RequiredFieldValidator>
        </div>

        <div>
            <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" Style="margin-top: 5px; margin-bottom: 5px;"
                CssClass="btn btn-primary" OnClick="BtnGuardar_Click" />
            <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" Style="margin-top: 5px; margin-bottom: 5px;"
                CssClass="btn btn-primary" OnClick="BtnCancelar_Click" />
        </div>
    </div>

</asp:Content>
