public class Participante
{
    public string Nome { get; set; } = "";
    public int Idade { get; set; }
    public bool PodeParticipar()
    {
        return Idade >= 18;
    }

}