participantes = [
    {"nome": "Ana", "idade": 20},
    {"nome": "Bruno", "idade": 16},
    {"nome": "Carla", "idade": 17},
]

aprovados = 0
nao_aprovados = 0

linhas_relatorio = []

for participante in participantes:
    nome = participante["nome"]
    idade = participante["idade"]

    if idade >= 18:
        print(f"{nome}: aprovado.")
        aprovados += 1
        linhas_relatorio.append(f"{nome}: aprovado.")

    else:
        print(f"{nome}: não aprovado.")
        nao_aprovados += 1
        linhas_relatorio.append(f"{nome}: não aprovado.")

total_participantes = len(participantes)

if total_participantes > 0:
    taxa_aprovacao = (aprovados / total_participantes) * 100
else:
    taxa_aprovacao = 0

print("\nResumo:")
print(f"Aprovados: {aprovados}")
print(f"Não aprovados: {nao_aprovados}")
print(f"Total de participantes: {total_participantes}")
print(f"Taxa de aprovação: {taxa_aprovacao:.1f}%")

linhas_relatorio.append("")
linhas_relatorio.append("Resumo:")
linhas_relatorio.append(f"Aprovados: {aprovados}")
linhas_relatorio.append(f"Não aprovados: {nao_aprovados}")
linhas_relatorio.append(f"Total de participantes: {total_participantes}")
linhas_relatorio.append(f"Taxa de aprovação: {taxa_aprovacao:.1f}%")


with open(
    "automation-python/relatorio_participantes.txt",
    "w",
    encoding="utf-8",
) as arquivo:
    arquivo.write("\n".join(linhas_relatorio))

print("\nRelatório salvo com sucesso.")
