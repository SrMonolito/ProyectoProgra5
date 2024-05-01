<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarMarcasPage.aspx.cs" Inherits="ProjectoProgra5.Pages.ListarMarcasPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <h2>Lista de Marcas</h2>

    <div>
        <span>Buscar por id</span>
        <div>
            <asp:TextBox ID="TxtId" runat="server" CssClass="form-control"
                Style="margin-top: 5px; margin-bottom: 5px;"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RevModeloformat" runat="server"
                ControlToValidate="TxtId"
                ErrorMessage="Por favor ingrese un identificador valido"
                ValidationExpression="\d+"></asp:RegularExpressionValidator>
        </div>

        <asp:Button ID="BtnBuscarporid" runat="server" Text="Buscar" Style="margin-top: 5px; margin-bottom: 5px;"
            CssClass="btn btn-primary" OnClick="BtnBuscarporid_Click" />
        <asp:Button ID="BtnGuardar" runat="server" Text="Registrar Marca" Style="margin-top: 5px; margin-bottom: 5px;"
            CssClass="btn btn-primary" OnClick="BtnGuardar_Click" />
    </div>

    <div>
        <asp:GridView ID="GvListaMarcas" runat="server" AutoGenerateColumns="False"
            Style="margin-top: 5px; margin-bottom: 5px;" CellPadding="10">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Id" />
                <asp:BoundField DataField="Nombre" HeaderText="Modelo" />

            </Columns>
        </asp:GridView>

    </div>


</asp:Content>
