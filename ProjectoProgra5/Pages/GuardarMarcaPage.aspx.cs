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
            {   //llamamos a la concexion con la base de datos
                using (ProyectoProgra5Entities1 db = new ProyectoProgra5Entities1())
                {
                    //guardamos los datos de la marca en una variable
                    string nombre = TxtNombre.Text;
                    //pasamos los datos mediante 
                    db.SP_Guardar_Marca(nombre);
                }
            }
            catch (Exception)
            {

                Response.Redirect("~/Pages/Error.aspx");
            }
            Response.Redirect("~/Pages/ExitoPage.aspx");
        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/ListarMarcasPage.aspx");
        }
    }
}