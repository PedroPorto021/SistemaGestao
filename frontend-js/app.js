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

const formulario = document.querySelector("#form-participante");
const campoNome = document.querySelector("#nome");
const campoIdade = document.querySelector("#idade");
const mensagem = document.querySelector("#mensagem");

const listaParticipantes = document.querySelector("#lista-participantes");
const listaVazia = document.querySelector("#lista-vazia");
const totalParticipantes = document.querySelector("#total-participantes");

const participantes = [];

function renderizarParticipantes() {
    listaParticipantes.innerHTML = "";

    participantes.forEach(function (participante) {
        const item = document.createElement("li");
        item.className = "participant-item";

        const informacoes = document.createElement("div");

        const nomeParticipante = document.createElement("strong");
        nomeParticipante.className = "participant-name";
        nomeParticipante.textContent = participante.nome;

        const idadeParticipante = document.createElement("span");
        idadeParticipante.className = "participant-meta";
        idadeParticipante.textContent =
            `${participante.idade} anos`;

        const situacao = document.createElement("span");
        situacao.className = "status-tag approved";
        situacao.textContent = "Aprovado";

        informacoes.append(nomeParticipante, idadeParticipante);
        item.append(informacoes, situacao);
        listaParticipantes.append(item);
    });

    totalParticipantes.textContent =
        String(participantes.length);

    listaVazia.hidden = participantes.length > 0;
}

formulario.addEventListener("submit", function (event) {
    event.preventDefault();

    const nomeDigitado = campoNome.value.trim();
    const idadeDigitada = Number(campoIdade.value);

    if (nomeDigitado === "") {
        mensagem.textContent =
            "Nome inválido. Digite um nome para continuar.";

        mensagem.className = "reprovado";
        return;
    }

    if (idadeDigitada >= 18) {
        mensagem.textContent =
            `${nomeDigitado}, cadastro aprovado para o evento.`;

        mensagem.className = "aprovado";

        const participante = {
            nome: nomeDigitado,
            idade: idadeDigitada,
        };

        participantes.push(participante);
        renderizarParticipantes();

        formulario.reset();
        campoNome.focus();
    } else {
        mensagem.textContent =
            `${nomeDigitado}, cadastro não aprovado. O evento é permitido para pessoas com 18 anos ou mais.`;

        mensagem.className = "reprovado";
    }

    console.log(
        `Participante: ${nomeDigitado}, idade: ${idadeDigitada}`
    );
});

renderizarParticipantes();
