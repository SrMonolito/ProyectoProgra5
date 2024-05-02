<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarVentasPage.aspx.cs" Inherits="ProjectoProgra5.Pages.ListarVentasPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Lista de Ventas</h2>

    <div>
        <span>Buscar por id</span>
        <div>
            <asp:TextBox ID="TxtIdVenta" runat="server" CssClass="form-control"
                Style="margin-top: 5px; margin-bottom: 5px;"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RevModeloformat" runat="server"
                ControlToValidate="TxtIdVenta"
                ErrorMessage="Por favor ingrese un identificador valido"
                ValidationExpression="\d+"></asp:RegularExpressionValidator>
        </div>

        <asp:Button ID="BtnBuscarVentaId" runat="server" Text="Buscar" Style="margin-top: 5px; margin-bottom: 5px;"
            CssClass="btn btn-primary" OnClick="BtnBuscarVentaId_Click" />
        <asp:Button ID="BtnRegistrarVenta" runat="server" Text="Registrar Venta" Style="margin-top: 5px; margin-bottom: 5px;"
            CssClass="btn btn-primary" OnClick="BtnRegistrarVenta_Click" />
    </div>


    <div class="primary-container">

        <asp:GridView ID="GvListaVentas" runat="server" AutoGenerateColumns="False" CssClass="table-striped" CellPadding="10">
            <Columns>
                <asp:BoundField DataField="id_venta" HeaderText="Id Venta" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
                <asp:BoundField DataField="id_cliente" HeaderText="Id Cliente" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="nombre_cliente" HeaderText="Nombre Cliente" />
                <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" />
                <asp:BoundField DataField="id_producto" HeaderText="Id Producto" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="nombre_producto" HeaderText="Nombre" />
                <asp:BoundField DataField="Cantidad_Producto" HeaderText="Cantidad Producto" ItemStyle-HorizontalAlign="Center" />


            </Columns>

        </asp:GridView>

    </div>

</asp:Content>
