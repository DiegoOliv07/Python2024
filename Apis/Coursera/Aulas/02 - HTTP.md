# Fundamentos de HTTP (Hypertext Transfer Protocol)

## Introdução ao HTTP

HTTP (Hypertext Transfer Protocol) é um protocolo de comunicação utilizado para transferir dados na web. Ele define como as mensagens são formatadas e transmitidas, e como os servidores e clientes interagem.

## Métodos HTTP

### Principais Métodos:

- **GET**: Solicita dados de um recurso específico.
- **POST**: Envia dados para serem processados (criação de recursos).
- **PUT**: Atualiza dados de um recurso específico.
- **DELETE**: Remove um recurso específico.
- **PATCH**: Aplica modificações parciais a um recurso.
- **OPTIONS**: Retorna os métodos HTTP que o servidor suporta para um determinado recurso.
- **HEAD**: Retorna apenas os cabeçalhos HTTP sem o corpo da resposta.

### Outros Métodos:

- **TRACE**: Ecos de volta a requisição recebida para que o cliente possa ver o que foi alterado no caminho do servidor.
- **CONNECT**: Estabelece um túnel para o servidor identificado pelo recurso.

## Estrutura da Requisição e da Resposta

### Cabeçalhos (Headers)

Os cabeçalhos HTTP fornecem informações adicionais sobre a requisição ou resposta. Exemplos comuns incluem:

- **Content-Type**: Define o tipo de mídia do corpo da mensagem (por exemplo, application/json).
- **Authorization**: Fornece credenciais para autenticar o usuário.
- **Cache-Control**: Especifica diretivas para controle de cache.

### Corpo da Mensagem

O corpo da mensagem é opcional e contém dados enviados com a requisição (para métodos como POST, PUT) ou dados retornados na resposta.

## Códigos de Status HTTP

Os códigos de status são retornados pelo servidor para indicar o resultado da requisição. Alguns exemplos comuns são:

- **2xx**: Sucesso (por exemplo, 200 OK).
- **3xx**: Redirecionamento (por exemplo, 301 Moved Permanently).
- **4xx**: Erro do cliente (por exemplo, 404 Not Found).
- **5xx**: Erro do servidor (por exemplo, 500 Internal Server Error).

## URLs e URIs

### URLs (Uniform Resource Locators)

URLs são endereços utilizados para identificar e acessar recursos na web. Uma URL possui os seguintes componentes:

- **Protocolo**: Define o protocolo de comunicação (por exemplo, http:// ou https://).
- **Host**: Nome de domínio ou endereço IP do servidor.
- **Porta**: Número da porta do servidor (opcional, padrão é 80 para HTTP e 443 para HTTPS).
- **Path**: Caminho para o recurso específico no servidor.
- **Query String**: Parâmetros opcionais para passar dados para o servidor.

Exemplo de URL: `http://example.com:8080/api/resource?id=123`

### URIs (Uniform Resource Identifiers)

URIs são identificadores genéricos para recursos, que incluem URLs como um subconjunto específico.

## Tipos de Resposta

Atualmente, os tipos de resposta mais comuns em APIs REST são JSON, XML, texto simples e, ocasionalmente, YAML. Os cabeçalhos Accept HTTP especificam o formato desejado da resposta.

Exemplo de cabeçalho de solicitação para diferentes tipos de resposta:

- HTML: `Accept: text/html`
- JSON e JSONP: `Accept: application/json`
- XML: `Accept: application/xml` ou `Accept: text/xml`
- YAML: `Accept: application/yaml` ou `Accept: text/yaml`

Este guia básico sobre HTTP proporciona uma compreensão fundamental para começar a trabalhar com APIs e desenvolver aplicações web eficientes e seguras.
