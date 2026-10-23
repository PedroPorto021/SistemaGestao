Console.WriteLine("=== Sistema de Gestão ===");
Console.WriteLine("Cadastro de participante para evento");

Console.Write("Digite o nome do participante: ");
string nome = Console.ReadLine() ?? "";

// Valida se o participante informou um nome.
if (nome == "")
{
    Console.WriteLine("Nome inválido. Digite um nome para continuar.");
    return;
}

Console.Write("Digite a idade do participante: ");

if (!int.TryParse(Console.ReadLine(), out int idade) || idade < 0)
{
    Console.WriteLine("Idade inválida. Digite um número inteiro igual ou maior que zero.");
    return;
}

Participante participante = new Participante();

participante.Nome = nome;
participante.Idade = idade;

if (participante.PodeParticipar())
{
    Console.WriteLine($"{participante.Nome}, cadastro aprovado para o evento.");
}
else
{
    Console.WriteLine($"{participante.Nome}, cadastro negado. O evento é permitido apenas para maiores de idade (18 anos ou mais).");
}