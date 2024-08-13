using ProjectoProgra5.DBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectoProgra5.Pages
{
    public partial class EditarClientePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                CargarInfoCliente();
            }
        }
        //funcion para guardar los cambios en el cliente
        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            try
            {
                using (ProyectoProgra5Entities1 db = new ProyectoProgra5Entities1())
                {
                    string nombre = TxtNombre.Text;
                    string apellidos = TxtApellidos.Text;
                    int telefono = Convert.ToInt32(TxtTelefono.Text);
                    int cedula = Convert.ToInt32(TxtCedula.Text);
                    db.SP_Editar_Cliente(id, nombre, apellidos,cedula, telefono);
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
        //funcion para cargar la informacion del cliente
        private void CargarInfoCliente()
        {
            try
            {
                using (ProyectoProgra5Entities1 db = new ProyectoProgra5Entities1())
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    var datos = db.SP_Buscar_Cliente_por_Id(id).LastOrDefault();
                    if (datos != null)
                    {
                        TxtId.Text = datos.id.ToString();
                        TxtNombre.Text = datos.Nombre.ToString();
                        TxtApellidos.Text = datos.Apellidos.ToString();
                        TxtTelefono.Text = datos.Telefono.ToString();
                        TxtCedula.Text = datos.Cedula.ToString();

                    }
                }

            }
            catch (Exception)
            {
                Response.Redirect("~/Pages/Error.aspx");
            }
            
        }
    }
}