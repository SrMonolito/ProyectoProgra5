using ProjectoProgra5.DBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectoProgra5.Pages
{
    public partial class EditarProductoPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                CargarMarcasddl();
                CargarInfoProducto();
            }
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {

            try
            {

                using (ProyectoProgra5Entities db = new ProyectoProgra5Entities())
                {
                    //asignacion de las variables

                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    string nombre = TxtProductoNombre.Text;
                    int idModelo = Convert.ToInt32(TxtidModelo.Text);
                    int idMarca = Convert.ToInt32(DdLMarcas.SelectedValue.ToString());
                    int Cantidad = Convert.ToInt32(TxtCantidad.Text);
                    int PrecioUnidad = Convert.ToInt32(TxtPrecioU.Text);
                    //llamada del procedimiento y envio de los datos almacenados en las variables
                    db.SP_Editar_Producto(id,nombre, PrecioUnidad, Cantidad, idMarca, idModelo);
                    Response.Redirect("~/Pages/ExitoPage.aspx");
                }
            }
            catch (Exception)
            {

                Response.Redirect("~/Pages/Error.aspx");
            }
        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/ListarProductosPage.aspx");
        }
        //funcion para cargar la informacion del producto
        private void CargarInfoProducto()
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            TxtIdProducto.Text = id.ToString();

            try
            {
                using (ProyectoProgra5Entities db = new ProyectoProgra5Entities())
                {
                    //llamamos al procedimiento y le pasamos la id del producto
                    var datosProducto = db.SP_Buscar_Producto_por_Id(id).FirstOrDefault();
                    if (datosProducto != null)
                    {
                        //aignamos la informacion en los textboxs
                        TxtIdProducto.Text = datosProducto.id.ToString();
                        TxtProductoNombre.Text = datosProducto.nombre;
                        TxtidModelo.Text = datosProducto.Modelo_id.ToString();
                        TxtCantidad.Text = datosProducto.cantidad.ToString();
                        TxtPrecioU.Text = datosProducto.PrecioUnidad.ToString();

                        //seleccionamos la marca del producto
                        string idmarca = datosProducto.Marca_id.ToString();
                        DdLMarcas.Items.FindByValue(idmarca).Selected = true;
                    }
                }
            }
            catch (Exception)
            {

                Response.Redirect("~/Pages/Error.aspx");
            }

        }

        //funcion para llenar el ddl con las marcas

        private void CargarMarcasddl()
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

                Response.Redirect("~/Pages/Error.aspx");
            }
        }

    }
}