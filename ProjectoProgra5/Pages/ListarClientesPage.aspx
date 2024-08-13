<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarClientesPage.aspx.cs" Inherits="ProjectoProgra5.Pages.ListarClientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




    <h2>Lista de Clientes</h2>

    <div>
        <span>Buscar por id</span>
        <div>
            <asp:TextBox ID="TxtId" runat="server" CssClass="form-control"
                Style="margin-top: 5px; margin-bottom: 5px;"></asp:TextBox>
        </div>

        <asp:Button ID="BtnBuscarporid" runat="server" Text="Buscar" Style="margin-top: 5px; margin-bottom: 5px;"
            CssClass="btn btn-primary" OnClick="BtnBuscarporid_Click" />
        <asp:Button ID="BtnGuardar" runat="server" Text="Registrar Cliente" Style="margin-top: 5px; margin-bottom: 5px;"
            CssClass="btn btn-primary" OnClick="BtnGuardar_Click" />
    </div>

    <div>
        <asp:GridView ID="GvListaClientes" runat="server" AutoGenerateColumns="False"
            Style="margin-top: 5px; margin-bottom: 5px;" CellPadding="10">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Id" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="Cedula" HeaderText="Cedula" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" ItemStyle-HorizontalAlign="Center" />

                <asp:TemplateField>
                    <ItemTemplate>
                        <a href="EditarClientePage.aspx?id=<%# Eval("id") %>" style="background-color: gray;" class="btn btn-primary">Modificar</a>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>

    </div>
</asp:Content>
