using ProjectoProgra5.DBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectoProgra5.Pages
{
    public partial class EditarModeloPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                CargarInfoModelo();
            }
        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/ListarModelosPage.aspx");
        }
        //Funcion para guardar los cambios en el modelo
        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            try
            {

                using (ProyectoProgra5Entities db = new ProyectoProgra5Entities())
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    string nombre = TxtModeloNombre.Text;
                    string especs = TxtEspecificaciones.Text;

                    db.SP_Editar_Modelo(id, nombre, especs);
                }
                Response.Redirect("~/Pages/ExitoPage.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }
        //Funcion para cargar la informacion del modelo
        private void CargarInfoModelo()
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            try
            {
                using (ProyectoProgra5Entities db = new ProyectoProgra5Entities())
                {
                    var datosmodelo = db.SP_Buscar_Modelo_por_id(id).FirstOrDefault();

                    if (datosmodelo!=null)
                    {
                        TxtId.Text = datosmodelo.id.ToString();
                        TxtModeloNombre.Text = datosmodelo.Nombre.ToString();
                        TxtEspecificaciones.Text = datosmodelo.Especificaciones.ToString();
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}