using ProjectoProgra5.DBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectoProgra5.Pages
{
    public partial class GuardarClientePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Funcion para guardar al cliente
        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                using (ProyectoProgra5Entities1 db = new ProyectoProgra5Entities1())
                {
                    //se guarda la informacion del cliente en variables
                    string nombre = TxtNombre.Text;
                    string apellidos = TxtApellidos.Text;
                    int cedula = Convert.ToInt32(TxtCedula.Text);
                    int Telefono = Convert.ToInt32(TxtTelefono.Text);
                    //se llama al procedimiento de la base de datos y le se pasa las variables con la informacion
                    db.SP_Guardar_Cliente(nombre,apellidos,cedula,Telefono);
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
            Response.Redirect("~/Pages/ListarClientesPage.aspx");
        }
    }
}