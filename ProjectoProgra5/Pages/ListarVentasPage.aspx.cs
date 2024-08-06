using ProjectoProgra5.DBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectoProgra5.Pages
{
    public partial class ListarVentasPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarInfoVentas();
        }
        //funcion para buscar una venta por su id
        protected void BtnBuscarVentaId_Click(object sender, EventArgs e)
        {
            //guardamos la id en una variable
            string id_venta = TxtIdVenta.Text;
            try
            {
                using (ProyectoProgra5Entities1 db = new ProyectoProgra5Entities1())
                {
                    //evitamos errores al verificar que la variable no se "" si lo es
                    
                    if (id_venta != "")
                    {
                        //convertimos la variable y verificamos que no sea 0 
                        int id_ventai = Convert.ToInt32(id_venta);
                        if (id_ventai != 0)
                        {
                            //llamamos al procedimiento y almacenamos los datos en una variable
                            var Info = db.SP_Buscar_Venta_por_id(id_ventai).ToList();
                            //cargamos los datos de la variable Info en el gridview
                            GvListaVentas.DataSource = Info;
                            GvListaVentas.DataBind();
                        }
                        else // cargamos toda la info si es un 0
                        {
                            CargarInfoVentas();
                        }
                    } // cargamos toda la info si es null
                    else
                    {
                        CargarInfoVentas();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
        //Funcion para cargar la informacion de las ventas en el gridview
        private void CargarInfoVentas()
        {
            try { 
                using (ProyectoProgra5Entities1 db = new ProyectoProgra5Entities1())
                {
                    var Info = db.SP_Listar_Ventas().ToList();

                    GvListaVentas.DataSource = Info;
                    GvListaVentas.DataBind();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void BtnRegistrarVenta_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/GuardarVentaPage.aspx");
        }
    }
}