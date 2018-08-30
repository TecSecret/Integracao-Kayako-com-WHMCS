Integração do Kayako para o WHMCS
=======================

Trata-se de um módulo para integrar o Kayako com o WHMCS e proporcionar unificação para o atendimento.

++++++++++++++++++++++++++++++++++++++++++++++++++++++++
**Este projeto foi descontinuado em 01/06/2018. A partir desta data o mesmo não sofrerá mais atualizações por parte da TecSecret.
+++++++++++++++++++++++++++++++++++++++++++++++++++++++

Funções
=======================
* Integre a conta de usuário do WHMCS com o Kayako.
* O usuário pode abrir um novo ticket com qualquer prioridade (Baixa, Média, Alta, Crítica, Emergência).
* Fornece a lista de todos os tickets criados pelo usuário.
* O usuário pode atualizar o status do ticket e sua prioridade.
* O usuário pode acompanhar os seus tickets via 'Responder'.
* Função responder e fechar ticket disponível pelo whmcs.
* Triagem de campo é fornecido para classificar os dados conforme a exigência.
* Integrado com 'Kayako Knowledgebase' para ajudar o usuário a encontrar respostas para suas consultas.
* Os usuários podem enviar seus respectivos comentários para artigos da base de conhecimento.
* Kayako custom field é suportado.

Requisitos
=======================
* Kayako: 4.64 ou superior
* WHMCS: 5.6.0 ou superior

Instalação
=======================
1. Realizar o download do repositório e descompactar
2. Apagar a pasta 'modules/support/kayako/' que se encontra aonde o Whmcs foi instalado
3. Apagar a pasta 'templates/kayako/' que se encontra aonde o Whmcs foi instalado
4. Apagar o arquivo 'hooks.php' /includes/hooks' caso exista
5. Gerar os detalhes da API em 'admindokayako > Rest API > API Information'. Abir o arquivo 'pastawhmcs/modules/support/kayako/config.php e altere as respectivas linhas
 - define('WHMCS_URL', 'http://URL do seu whmcs/');   
 - define('API_URL', 'http://url do kayako/api/index.php?');
 - define('API_KEY', 'API key apresentada no admin do kayako');
 - define('SECRET_KEY', 'Secret key apresentada no admin do Kayako');
6. Acessar a área admin do WHMCS
7. Vá em Setup > Configurações Gerais
8. Clique na Tab Suporte e altera para 'Kayako'
9. Se você integrou corretamente a sua base de conhecimento do kayako será apresentada no Whmcs quando acessar a área do cliente.

Créditos e Códigos
===================
O código original foi extraído do repositório: https://github.com/kayako/whmcs-integration

