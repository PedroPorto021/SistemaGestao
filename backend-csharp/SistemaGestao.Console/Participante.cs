public class Participante
{
    public string Nome { get; set; } = "";
    public int Idade { get; set; }

    public Participante(string nome, int idade)
    {
        Nome = nome;
        Idade = idade;
    }

    public bool PodeParticipar()
    {
        return Idade >= 18;
    }
}