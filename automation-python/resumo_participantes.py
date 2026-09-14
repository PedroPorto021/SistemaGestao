participantes = [
    {"nome": "Ana", "idade": 20},
    {"nome": "Bruno", "idade": 16},
    {"nome": "Carla", "idade": 17}
]

aprovados = 0
nao_aprovados = 0

for participante in participantes:
    nome = participante["nome"]
    idade = participante["idade"]

    if idade >= 18:
        print(f"{nome}: aprovado.")
        aprovados += 1
    else:
        print(f"{nome}: não aprovado.")
        nao_aprovados += 1

print("\nResumo:")
print(f"Aprovados: {aprovados}")
print(f"Não aprovados: {nao_aprovados}")