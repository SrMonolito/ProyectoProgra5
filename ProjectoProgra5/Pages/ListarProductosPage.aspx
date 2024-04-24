<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarProductosPage.aspx.cs" Inherits="ProjectoProgra5.Pages.ListarProductosPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Lista Productos</h2>

    <div>
        <span>Buscar por id</span>
        <div>
            <asp:TextBox ID="TxtIdProducto" runat="server" CssClass="form-control"
                Style="margin-top: 5px; margin-bottom: 5px;"></asp:TextBox>
        </div>

        <asp:Button ID="BtnBuscarProductoId" runat="server" Text="Buscar" Style="margin-top: 5px; margin-bottom: 5px;"
            CssClass="btn btn-primary" OnClick="BtnBuscarProductoId_Click" />
        <asp:Button ID="BtnRegistrarProducto" runat="server" Text="Registrar Producto" Style="margin-top: 5px; margin-bottom: 5px;"
            CssClass="btn btn-primary" OnClick="BtnRegistrarProducto_Click" />
    </div>

    <div>
        <asp:GridView ID="GvListaProductos" runat="server" AutoGenerateColumns="False"
            Style="margin-top: 5px; margin-bottom: 5px;" CellPadding="10">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Id" />
                <asp:BoundField DataField="Nombre_Producto" HeaderText="Producto" />
                <asp:BoundField DataField="PrecioUnidad" HeaderText="Precio por Unidad" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="Nombre_Marca" HeaderText="Marca" />
                <asp:BoundField DataField="Nombre_Modelo" HeaderText="Modelo" />
                <asp:BoundField DataField="Cantidad" HeaderText="Cantidad en Stock" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="Marca_id" HeaderText="Id Marca" Visible="False" />
                <asp:BoundField DataField="Modelo_id" HeaderText="Id Modelo" Visible="False" />

                <asp:TemplateField>
                    <ItemTemplate>
                        <a href="EditarProductoPage.aspx?id=<%# Eval("id") %>" style="background-color: gray;" class="btn btn-primary">Modificar</a>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>

    </div>




</asp:Content>
