using System.Collections.Generic;

namespace CEMEX.Entidades
{
    public class SubModulo
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public int Status { get; set; }
        public List<Permiso> Permisos { get; set; }
    }
}
