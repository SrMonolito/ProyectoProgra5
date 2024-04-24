<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarMarcasPage.aspx.cs" Inherits="ProjectoProgra5.Pages.ListarMarcasPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    
    <h2>Lista de Marcas</h2>

     <div>
     <span>Buscar por id</span>
     <div>
          <asp:TextBox ID="TxtId" runat="server" CssClass="form-control"
              style="margin-top:5px; margin-bottom:5px;"></asp:TextBox>
     </div>
    
     <asp:Button ID="BtnBuscarporid" runat="server" Text="Buscar" style="margin-top:5px; margin-bottom:5px;"
         CssClass="btn btn-primary" OnClick="BtnBuscarporid_Click"/>
     <asp:Button ID="BtnGuardar" runat="server" Text="Registrar Marca" style="margin-top:5px; margin-bottom:5px;"
 CssClass="btn btn-primary" OnClick="BtnGuardar_Click"/>
 </div>

    <div>
        <asp:GridView ID="GvListaMarcas" runat="server" AutoGenerateColumns="False"
            style="margin-top:5px; margin-bottom:5px;" CellPadding="10">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Id"/>
                <asp:BoundField DataField="Nombre" HeaderText="Modelo"/>
               
            </Columns>
        </asp:GridView>

    </div>


</asp:Content>
