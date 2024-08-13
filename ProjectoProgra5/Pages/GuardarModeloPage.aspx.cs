using ProjectoProgra5.DBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectoProgra5.Pages
{
    public partial class GuardarModeloPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/ListarModelosPage.aspx");
        }
        //Funcion para guardar un modelo
        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            //declaramos las variables donde se van a almacenar los datos
            string Nombre = TxtModeloNombre.Text;
            string Especs = TxtEspecificaciones.Text;

            try
            {
                using (ProyectoProgra5Entities1 db = new ProyectoProgra5Entities1())
                {
                    //Pasamos al procedimiento los datos
                    db.SP_Guardar_Modelo(Nombre, Especs);
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/Pages/Error.aspx");
            }
            Response.Redirect("~/Pages/ExitoPage.aspx");
        }
    }
}