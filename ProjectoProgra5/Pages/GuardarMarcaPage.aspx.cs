using ProjectoProgra5.DBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectoProgra5.Pages
{
    public partial class GuardarMarcaPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                using (ProyectoProgra5Entities db = new ProyectoProgra5Entities())
                {
                    string nombre = TxtNombre.Text;

                    db.SP_Guardar_Marca(nombre);
                }
                Response.Redirect("~/Pages/ExitoPage.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/ListarMarcasPage.aspx");
        }
    }
}