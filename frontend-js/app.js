// Exibe uma mensagem no terminal para confirmar que o JavaScript está funcionando.
console.log("Sistema de Gestão - JavaScript iniciado.");

// Guarda o nome do participante em uma variável.
let nome = "Pedro";

// Exibe o valor armazenado na variável.
console.log(nome);

// Guarda a idade do participante.
let idade = 25;

// Valida a regra do evento: somente maiores de 18 anos podem participar.
if (idade >= 18) {
    console.log("Participante aprovado para o evento.");
} else {
    console.log("Participante não pode acessar o evento.");
}

// Nome do evento: não pretendemos trocar durante a execução.
const evento = "Evento de Tecnologia";

// Quantidade de vagas: pode mudar.
let vagas = 50;

console.log(evento);
console.log(vagas);

// Atualiza a quantidade de vagas disponíveis.
vagas = 49;

// Exibe o novo valor de regras.
console.log(vagas);


// Cria uma função para exibir um resumo do evento.
function exibirResumoEvento() {
    console.log(`Evento: ${evento} | Vagas disponíveis: ${vagas}`);
}

// Executa a função criada acima.
exibirResumoEvento();