using ProjectoProgra5.DBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectoProgra5.Pages
{
    public partial class ListarProductosPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarInfoProductos();
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
        //Funcion para buscar producto mediante la id
        protected void BtnBuscarProductoId_Click(object sender, EventArgs e)
        {

            //guardamos la id en una variable
            string id = TxtIdProducto.Text;
            try
            {
                using (ProyectoProgra5Entities1 db = new ProyectoProgra5Entities1())
                {
                    //evitamos errores al verificar que la variable no se "" si lo es

                    if (id != "")
                    {
                        //convertimos la variable y verificamos que no sea 0 
                        int idi = Convert.ToInt32(id);
                        if (idi != 0)
                        {
                            //llamamos al procedimiento y almacenamos los datos en una variable
                            var Info = db.SP_Buscar_Producto_por_Id(idi).ToList();
                            //cargamos los datos de la variable Info en el gridview
                            GvListaProductos.DataSource = Info;
                            GvListaProductos.DataBind();
                        }
                        else // cargamos toda la info si es un 0
                        {
                            CargarInfoProductos();
                        }
                    } // cargamos toda la info si es null
                    else
                    {
                        CargarInfoProductos();
                    }
                }
            }
            catch (Exception)
            {

                Response.Redirect("~/Pages/Error.aspx");
            }
        }
        //funcion que redirige a la venta de creacion de productos
        protected void BtnRegistrarProducto_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/GuardarProductoPage.aspx");
        }
    }
}