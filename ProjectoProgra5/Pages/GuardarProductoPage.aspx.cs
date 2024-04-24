using ProjectoProgra5.DBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectoProgra5.Pages
{
    public partial class GuardarProductoPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                CargarDdlMarcas();
            }
        }
        //Funcion por si te arrepientes
        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/ListarProductosPage.aspx");
        }
        //Funcion para guardar el producto
        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                
                using (ProyectoProgra5Entities db = new ProyectoProgra5Entities())
                {
                    //asignacion de las variables
                    string nombre = TxtProductoNombre.Text;
                    int idModelo = Convert.ToInt32(TxtidModelo.Text);
                    int idMarca = Convert.ToInt32(DdLMarcas.SelectedValue.ToString());
                    int Cantidad = Convert.ToInt32(TxtCantidad.Text);
                    int PrecioUnidad = Convert.ToInt32(TxtPrecioU.Text);
                    //llamada del procedimiento y envio de los datos almacenados en las variables
                    db.SP_Guardar_Producto(nombre, PrecioUnidad, Cantidad, idMarca, idModelo);
                    Response.Redirect("~/Pages/ExitoPage.aspx");
                }
            }
            catch (Exception)
            {

                throw;
            }
            
        }

        //funcion para cargar las marcas del drop down list
        private void CargarDdlMarcas()
        {
            try
            {
                var ListaMarcas = new List<ListItem>();

                using (ProyectoProgra5Entities db = new ProyectoProgra5Entities())
                {
                    var query = (from lr in db.SP_Listar_Marcas()
                                 select new ListItem
                                 {
                                     Value = lr.id.ToString(),
                                     Text = lr.nombre.ToString()

                                 }
                                 ).ToList();
                    //Incorporamos cada posible resultado a la variable que usamos para el DropDownList
                    ListaMarcas.AddRange(query);
                    //y ahora hacemos el binding entre la lista y el ddl
                    DdLMarcas.DataTextField = "Text";
                    DdLMarcas.DataValueField = "Value";

                    DdLMarcas.DataSource = ListaMarcas;
                    DdLMarcas.DataBind();
                }
            }
            catch (Exception)
            {

                throw;
            }

        }
    }
}