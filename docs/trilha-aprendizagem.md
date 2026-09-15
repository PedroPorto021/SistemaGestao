# Adendo da trilha de aprendizagem

Este documento complementa o `Guia_Estrategico_Desenvolvimento_TI_IA_Renda.pdf`. O guia original permanece como base; este adendo registra decisões de direcionamento tomadas durante as sessões práticas.

## Direcionamento profissional

- Formação principal: Desenvolvimento de Sistemas.
- Direção de especialização: desenvolvimento Full-stack, integrando Front-end, backend, banco de dados e APIs.
- Diferencial de portfólio: Front-end, interfaces web e experiências visuais e interativas.
- Identidade visual utilizada: **Front-end • Interfaces Web • Sistemas**.
- Posicionamento atual: estudante em formação Full-stack, construindo projetos práticos e buscando oportunidades iniciais.
- Não utilizar títulos como especialista ou desenvolvedor experiente antes que os projetos comprovem essas competências.

## Base técnica Full-stack

- Front-end: HTML, CSS, JavaScript e, progressivamente, TypeScript e React.
- Backend: Java e C# para lógica, POO, regras de negócio e futuras APIs.
- Banco de dados: SQL para modelagem, consultas, relacionamentos e persistência.
- Automação: Python e PowerShell para arquivos, dados, APIs e tarefas repetitivas.
- Integração: HTTP, JSON, APIs REST e autenticação para conectar as camadas.
- Fluxo profissional: Git e GitHub integrados ao desenvolvimento e ao portfólio.
- Sustentação: redes, Linux, segurança básica, testes e deploy.
- Diferenciais: IA aplicada, interfaces visuais, marketing e compreensão do negócio.

## Trilha principal de Front-end

1. HTML: estrutura, semântica, formulários e acessibilidade.
2. CSS: organização visual, cores, tipografia, espaçamento, layout e responsividade.
3. JavaScript: comportamento, eventos, validação, arrays, objetos, DOM, JSON e consumo de APIs.
4. TypeScript: tipos, interfaces e refatoração do código JavaScript.
5. React: componentes, propriedades, estado, hooks, rotas e dashboard do SistemaGestao.
6. React Native: aplicação móvel consumindo a mesma API, quando a base web estiver consolidada.

## Aplicação no SistemaGestao

- Evoluir `frontend-js` de exercícios no console para uma interface web de cadastro.
- Construir progressivamente formulários, validações, listas, filtros, busca e dashboard.
- Relacionar a interface ao backend e ao banco de dados quando cada camada estiver pronta.
- Usar dados fictícios nas demonstrações.
- Registrar imagens, instruções de execução, tecnologias, decisões e próximos passos no portfólio.

## IA e plataformas visuais

- Usar IA para explicar, comparar alternativas, diagnosticar erros e acelerar partes repetitivas.
- Revisar, compreender, adaptar e testar todo código ou conteúdo gerado.
- Experimentar WordPress e construtores como o da Hostinger em projetos apropriados, especialmente sites institucionais, landing pages e páginas de divulgação.
- Manter projetos em código para demonstrar HTML, CSS, JavaScript, acessibilidade, responsividade e capacidade de personalização.
- Registrar com transparência o papel da IA ou do construtor e a contribuição própria.

## Python aplicado

- Introduzir progressivamente após a consolidação dos fundamentos atuais.
- Priorizar automação de tarefas reais, arquivos CSV/JSON, APIs, análise de dados e pequenos serviços online.
- Relacionar os exercícios a necessidades de trabalho, marketing e atividades digitais sempre que houver uma entrega clara.

## Inglês técnico habitual

- Nível atual: básico, com pouca prática.
- Em cada sessão, apresentar termos técnicos em contexto, tradução e pelo menos uma frase curta.
- Reutilizar os termos nas aulas seguintes para criar familiaridade gradual.
- Não exagerar a proficiência no LinkedIn, GitHub ou currículo; registrar como básico/em desenvolvimento.

## Critérios para o portfólio

- Priorizar poucos projetos bem apresentados e funcionais.
- Cada projeto principal deve explicar problema, construção, aprendizado, resultado e próximo passo.
- A apresentação visual deve ser minimalista, coerente e fácil de localizar.
- Evidenciar Front-end e interfaces nos projetos, mantendo backend e SQL como sustentação técnica.
- Não publicar uma nova postagem sem uma entrega real ou aprendizado demonstrável.
- Melhorar progressivamente imagens, demonstrações, descrições e tópicos dos repositórios.

## Método das sessões

- Inspecionar o projeto e o estado do Git antes de alterar arquivos.
- Definir uma entrega pequena compatível com o tempo disponível.
- Trabalhar um bloco funcional por vez: explicar, construir, testar e interpretar.
- Preservar exercícios presenciais e alterações que estejam fora da tarefa.
- Usar `git status` e `git diff`; preparar somente arquivos específicos e evitar `git add .`.
- Fazer commit e push apenas quando houver uma entrega válida.
- Encerrar registrando o que foi construído, aprendido, corrigido e qual será o próximo passo.

## Próxima evolução registrada

- A primeira interface web do cadastro de participantes foi criada em `frontend-js`.
- O HTML possui formulário com nome, idade, validações nativas e mensagem dinâmica acessível com `aria-live`.
- O CSS inicial aplica paleta coerente com a identidade profissional, tipografia, espaçamento, card, campos, botão, `hover` e foco visível.
- O JavaScript captura o envio, impede o recarregamento e apresenta o cadastro na própria página.
- O DevTools foi utilizado para inspecionar `Elements` e `Styles`, testar valores temporários e simular a largura de 320px.
- Próximo bloco: aplicar a regra de idade ao formulário com `if/else` e diferenciar visualmente mensagens de aprovação e negação.

### Primeira automação em Python

- Python 3.13.15 e a extensão oficial do VS Code foram configurados.
- Foi criado `automation-python/resumo_participantes.py`.
- O script utiliza uma lista de participantes fictícios.
- Cada participante é representado por um dicionário com nome e idade.
- Um laço `for` percorre os participantes.
- A condição `if/else` verifica a idade mínima.
- Contadores geram o resumo de aprovados e não aprovados.
- A implementação foi testada, revisada e publicada no GitHub.
- Commit: `dd73ae5 feat: adiciona resumo de participantes em Python`.
- Próxima evolução em Python: ler participantes de um arquivo JSON ou CSV antes de avançar para APIs.