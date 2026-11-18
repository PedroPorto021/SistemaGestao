public class Participante
{
    public string Nome { get; private set; } = "";
    public int Idade { get; private set; }
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