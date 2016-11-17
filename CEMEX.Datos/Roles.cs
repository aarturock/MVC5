using CEMEX.Entidades;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace CEMEX.Datos
{
    public class Roles
    {
        SqlCommand cmd;

        public List<Rol> GetRoles()
        {
            try
            {
                using (SqlConnection conexion = new SqlConnection())
                {
                    conexion.Open();
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
