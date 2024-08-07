using ProjectoProgra5.DBContext;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectoProgra5.Pages
{
    public partial class GuardarVentaPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                CargarInfoProductos();
                CargarClientesDdl();
            }
        }



        protected void BtnGuardarVenta_Click(object sender, EventArgs e)
        {
            //guardamos la informacion de del id del cliente y la fecha en las variables
            //tambien declaramos las variables del id del producto y la cantidad que se va a comprar
            int idcliente = Convert.ToInt32(DdLClientes.SelectedValue.ToString());
            DateTime Fecha = DateTime.Now;
            int idproducto;

            try
            {
                //llamamos al procedimiento para hacer la insercion en tbl_venta
                using (ProyectoProgra5Entities1 db = new ProyectoProgra5Entities1())
                {
                    db.SP_Guardar_Venta(idcliente, Fecha);
                }

                //hacemos que el foreach recorra las filas del gridview
                foreach (GridViewRow fila in GvListaProductos.Rows)
                {
                    //si una de la casilla en una de las filas esta marcada se guarda la informacion en las variables
                    //y se llama al procedimiento para guardar la venta
                    CheckBox CBSelected = (CheckBox)fila.FindControl("CBProducto");
                    if (CBSelected.Checked)
                    {
                        idproducto = Convert.ToInt32(fila.Cells[0].Text);
                        TextBox cantidad = (TextBox)fila.FindControl("TxtCantidad");
                        int cantidadcomprada = Convert.ToInt32(cantidad.Text);
                        using (ProyectoProgra5Entities1 db = new ProyectoProgra5Entities1())
                        {
                            db.SP_Guardar_Detalles_Venta(idproducto, cantidadcomprada);
                        }
                    }
                }

            }
            catch (Exception)
            {

                Response.Redirect("~/Pages/Error.aspx");
            }
            Response.Redirect("~/Pages/ExitoPage.aspx");
        }
        //Funcion para cargar los Clientes en el DropdownList
        private void CargarClientesDdl()
        {
            try
            {
                var ListaClientes = new List<ListItem>();

                using (ProyectoProgra5Entities1 db = new ProyectoProgra5Entities1())
                {
                    var query = (from lr in db.SP_Listar_Clientes()
                                 select new ListItem
                                 {
                                     Value = lr.id.ToString(),
                                     Text = lr.Nombre.ToString()

                                 }
                                 ).ToList();
                    //Incorporamos cada posible resultado a la variable que usamos para el DropDownList
                    ListaClientes.AddRange(query);
                    //y ahora hacemos el binding entre la lista y el ddl
                    DdLClientes.DataTextField = "Text";
                    DdLClientes.DataValueField = "Value";

                    DdLClientes.DataSource = ListaClientes;
                    DdLClientes.DataBind();
                }
            }
            catch (Exception)
            {

                Response.Redirect("~/Pages/Error.aspx");
            }
        }

        //Funcion para cargar la informacion dentro del gridview de los productos
        private void CargarInfoProductos()
        {
            try
            {
                using (ProyectoProgra5Entities1 db = new ProyectoProgra5Entities1())
                {
                    //llamamos al procedimiento y almacenamos los datos en una variable
                    var Info = db.SP_Listar_Productos().ToList();
                    //cargamos los datos de la variable Info en el gridview
                    GvListaProductos.DataSource = Info;
                    GvListaProductos.DataBind();
                }
            }
            catch (Exception)
            {

                Response.Redirect("~/Pages/Error.aspx");
            }

        }
        //Funcion por si te arrepientes
        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/ListarVentasPage.aspx");
        }

        //funcion para verificar que no se compre mas productos de los que hay en stock
        



    }
}