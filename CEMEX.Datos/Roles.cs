using CEMEX.Entidades;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace CEMEX.Datos
{
    public class Roles
    {
        SqlCommand cmd;
        SqlDataReader reader;

        public List<Rol> GetRoles(int statusRegistro)
        {
            try
            {
                using (SqlConnection conexion = new SqlConnection())
                {
                    conexion.Open();
                    cmd = conexion.CreateCommand();
                  
                }

            }
            catch (SqlException exSql)
            {

            }
            catch (Exception ex)
            {
                
            }

            return new List<Rol>();
        }
    }
}
