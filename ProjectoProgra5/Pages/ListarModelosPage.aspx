<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarModelosPage.aspx.cs" Inherits="ProjectoProgra5.Pages.ListarModelosPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h2>Lista de Modelos</h2>

    <div>
        <span>Buscar por id</span>
        <div>
            <asp:TextBox ID="TxtId" runat="server" CssClass="form-control"
                Style="margin-top: 5px; margin-bottom: 5px;"></asp:TextBox>
        </div>

        <asp:Button ID="BtnBuscarporid" runat="server" Text="Buscar" Style="margin-top: 5px; margin-bottom: 5px;"
            CssClass="btn btn-primary" OnClick="BtnBuscarporid_Click" />
        <asp:Button ID="BtnGuardar" runat="server" Text="Registrar Modelo" Style="margin-top: 5px; margin-bottom: 5px;"
            CssClass="btn btn-primary" OnClick="BtnGuardar_Click" />
    </div>

    <div>
        <asp:GridView ID="GvListaModelos" runat="server" AutoGenerateColumns="False"
            Style="margin-top: 5px; margin-bottom: 5px;" CellPadding="10">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Id" />
                <asp:BoundField DataField="Nombre" HeaderText="Modelo" />
                <asp:BoundField DataField="Especificaciones" HeaderText="Especificaciones" ItemStyle-HorizontalAlign="Center" />

                <asp:TemplateField>
                    <ItemTemplate>
                        <a href="EditarModeloPage.aspx?id=<%# Eval("id") %>" style="background-color: gray;" class="btn btn-primary">Modificar</a>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>

    </div>

</asp:Content>
