1. Planejamento da Implantação: PortfolioHUB Híbrido
1.1. Escopo e Estratégia de Arquitetura
Para atender aos critérios de alta performance visual, agilidade no desenvolvimento e conformidade com boas práticas de engenharia, foi adotado um modelo de Implantação Híbrida para o PortfolioHUB do estudante Pedro Baliza:

Camada de Apresentação (Front-end): Desenvolvida e hospedada na plataforma Canva, focando na experiência do usuário (UX/UI) e design responsivo.

Camada de Infraestrutura e Código (Back-end/Repositório): Centralizada no GitHub, responsável pelo armazenamento e controle de versão dos projetos práticos (C, Python, SQL) e pelo redirecionamento oficial do domínio.

1.2. Cronograma de Implantação Executado
O processo completo de implantação foi dividido em etapas lógicas, executadas com o suporte consultivo da IA Gemini:

[Fase 1: Setup] ➔ [Fase 2: Governança/Tokens] ➔ [Fase 3: Hardening] ➔ [Fase 4: Deploy]
Fase 1: Configuração do Ambiente Base

Criação do repositório público Pedro-Baliza-portfolioHUB no GitHub.

Upload e organização dos projetos práticos e códigos-fonte que compõem o histórico técnico do desenvolvedor (mario.py, cash.c, movies.sql, etc.).

Fase 2: Configuração de Governança e Tokens de API

Inicialização da sessão de engenharia de prompts com o Google Gemini para mapeamento de riscos.

Criação do Fine-grained Personal Access Token no GitHub Developer Settings, limitando o escopo a permissões estritas de leitura (Read-only para Contents e Metadata).

Geração da chave de API oficial para modelos generativos através do Google AI Studio.

Fase 3: Hardening de Segurança (Proteção de Credenciais)

Criação e estruturação do arquivo de variáveis de ambiente .env.example na raiz do repositório.

Ocultação das chaves reais (github_pat_... e AIzaSy_...) no ambiente público para mitigação de ataques de exposição de credenciais.

Homologação do sistema de varredura automatizada contra vazamentos (GitHub Secret Scanning).

Fase 4: Deploy e Lançamento

Refatoração e modernização estética do arquivo de entrada global index.html utilizando padrões modernos de HTML5 e CSS3.

Ativação e configuração do ecossistema GitHub Pages apontando para a branch principal (main).

Geração do link público operacional de redirecionamento e conexão definitiva com a camada visual do Canva.

1.3. Configuração do Google GEMINI como Guia Estratégico
A inteligência artificial Google Gemini foi configurada e utilizada ativamente durante todo o ciclo de vida do projeto como um consultor sênior de DevOps e Segurança Cloud.

Diretrizes de Atuação da IA: O Gemini foi provocado a validar as decisões de arquitetura (como a escolha da arquitetura híbrida com o Canva e o isolamento de tokens no .env.example), garantindo que o projeto seguisse o Princípio do Menor Privilégio e as recomendações de conformidade da OWASP para aplicações seguras na nuvem.
