# Convenções e Melhores Práticas para Nomes de Endpoints de API

## Introdução

Os endpoints de API são fundamentais para a clareza e eficiência de uma aplicação. Nomes bem projetados não apenas facilitam o entendimento do propósito do endpoint, mas também promovem uma melhor organização e colaboração no desenvolvimento.

## Nomenclatura de URI

- Utilize letras minúsculas e hífens para separar palavras em endpoints. Evite underscores, title case ou camel case.
- Exemplo: `/orders`, não `/Orders` ou `/ordersList`.

## Uso de Variáveis

- Utilize camel case para variáveis dinâmicas em endpoints, envolvendo-as em chaves.
- Exemplo: `/orders/{orderId}` para identificar um pedido específico.

## Relacionamentos Hierárquicos

- Utilize barras (forward slashes) para indicar relacionamentos hierárquicos entre objetos.
- Exemplo: `/customers/{customerId}/orders` para obter os pedidos de um cliente específico.

## Uso de Nomes Descritivos

- Utilize substantivos para indicar os recursos que o endpoint manipula.
- Exemplo: `/books/{bookId}` para obter informações sobre um livro específico.

## Evitar Extensões de Nome de Arquivo

- Nunca utilize extensões de nome de arquivo (como `.json` ou `.xml`) nos endpoints.
- Utilize parâmetros de string de consulta para especificar o formato de saída.
- Exemplo: `/orders/{orderId}?format=json` para obter dados em formato JSON.

## Filtragem e Pesquisa

- Utilize parâmetros de string de consulta para filtrar coleções ou realizar buscas.
- Exemplo: `/menu-items?category=appetizers` para obter apenas os itens de aperitivo.

## Trailing Slash

- Evite adicionar uma barra no final dos nomes dos endpoints.
- Exemplo: `/orders/{orderId}`, não `/orders/{orderId}/`.

## Práticas Gerais

- Mantenha uma estratégia consistente de nomenclatura de API para facilitar o entendimento e uso por outros desenvolvedores.
- Siga as convenções padrão de nomenclatura de API para garantir clareza e consistência.

Essas práticas ajudam a criar APIs mais legíveis, fáceis de usar e consistentes, contribuindo para a qualidade geral do projeto de desenvolvimento.

