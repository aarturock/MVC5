using System.Collections.Generic;

namespace CEMEX.Entidades
{
    public class Modulo
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public bool Status { get; set; }
        public List<SubModulo> Permisos { get; set; }
    }
}
