﻿using ProjectoProgra5.DBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectoProgra5.Pages
{
    public partial class ListarMarcasPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarInfo();
        }



        protected void BtnBuscarporid_Click(object sender, EventArgs e)
        {
            //guardamos la id en una variable
            string id = TxtId.Text;
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
                            var Info = db.SP_Buscar_Modelo_por_id(idi).ToList();
                            //cargamos los datos de la variable Info en el gridview
                            GvListaMarcas.DataSource = Info;
                            GvListaMarcas.DataBind();
                        }
                        else // cargamos toda la info si es un 0
                        {
                            CargarInfo();
                        }
                    } // cargamos toda la info si es null
                    else
                    {
                        CargarInfo();
                    }
                }
            }
            catch (Exception)
            {

                Response.Redirect("~/Pages/Error.aspx");
            }

        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/GuardarMarcaPage");
        }

        //Funcion para cargar la informacion dentro del gridview de los productos
        private void CargarInfo()
        {
            try
            {
                using (ProyectoProgra5Entities1 db = new ProyectoProgra5Entities1())
                {
                    //llamamos al procedimiento y almacenamos los datos en una variable
                    var Info = db.SP_Listar_Marcas().ToList();
                    //cargamos los datos de la variable Info en el gridview
                    GvListaMarcas.DataSource = Info;
                    GvListaMarcas.DataBind();
                }
            }
            catch (Exception)
            {

                Response.Redirect("~/Pages/Error.aspx");
            }

        }

    }
}