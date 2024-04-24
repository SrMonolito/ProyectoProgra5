<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GuardarVentaPage.aspx.cs" Inherits="ProjectoProgra5.Pages.GuardarVentaPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Registrar Venta</h2>

    <div>
        <div style="margin-top: 5px; margin-bottom: 5px;">
            <span>Cliente</span>
            <asp:DropDownList ID="DdLClientes" runat="server"></asp:DropDownList>
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

                    <asp:TemplateField HeaderText="Cantidad">
                        <ItemTemplate>
                            <asp:TextBox ID="TxtCantidad" runat="server"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Añadir" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:CheckBox ID="CBProducto" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

        </div>

        <div>
            <asp:Button ID="BtnGuardarVenta" runat="server" Text="Registrar venta" OnClick="BtnGuardarVenta_Click"
                CssClass="btn btn-primary" />
            <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" Style="margin-top: 5px; margin-bottom: 5px;"
                CssClass="btn btn-primary" OnClick="BtnCancelar_Click" />
        </div>

    </div>


</asp:Content>
