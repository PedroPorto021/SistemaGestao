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
int idade = int.Parse(Console.ReadLine() ?? "0");

if (idade >= 18)
{
    Console.WriteLine($"{nome}, cadastro aprovado para o evento.");
}
else
{
    Console.WriteLine($"{nome}, cadastro negado. O evento é permitido apenas para maiores de 18 anos.");
}