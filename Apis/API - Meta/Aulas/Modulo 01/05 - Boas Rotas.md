# Introdução 

Nomear sua API corretamente é a primeira etapa para projetar uma boa API. Quando o nome da API segue uma convenção, ele fornece muitas informações sobre a API e sua finalidade. Para criar um endpoint de API significativo, o senhor precisa seguir algumas diretrizes e regras simples. 

Nesta leitura, o senhor aprenderá sobre as convenções de nomenclatura de API e se familiarizará com os bons endpoints de API e os maus endpoints de API, ou rotas boas e ruins.

## Regra 01: tudo em letras minúsculas, com hífens e não abreviado 

O URI da sua API deve estar sempre em letras minúsculas. Não use camelCase, PascalCase ou Title case ao projetar sua API. Além disso, separe várias palavras usando hífens, não sublinhados. Não mantenha palavras resumidas ou encurtadas em seu URI; use sempre a forma completa e significativa.

Se a sua API aceitar uma variável, o senhor deve sempre representá-la em camelCase e envolvê-la em um conjunto de chaves `{}`.

Vamos examinar os exemplos a seguir.

| URI                          | Status | Por que                                      |
|------------------------------|--------|----------------------------------------------|
| `/customers`                 | Bom    | Plural e minúsculo                           |
| `/customers/16/phone-number` | Bom    | Minúsculas e hífen usados para separar palavras |
| `/customers/16/address/home` | Bom    | Minúsculas, sem barra final, exibem a relação hierárquica com barras |
| `/users/{userId}`            | Bom    | Variável em camelCase e sem hífen no nome da variável |
| `/Customers`                 | Ruim   | Título em caixa alta                         |
| `/generalMembers`            | Ruim   | camelCase, sem hífens para separar palavras  |
| `/MenuItems`                 | Ruim   | Caso Pascal                                  |
| `/GeneralMembers`            | Ruim   | Caso Pascal                                  |
| `/customers/16/tel-no`       | Ruim   | Abreviação                                   |
| `/customers/16/phone_number` | Ruim   | Underscores                                  |
| `/customers/16/phonenumber`  | Ruim   | Sem separação de palavras                    |
| `/users/{user-id}`           | Ruim   | A variável deve estar em camelCase e com hífen entre as palavras |

## Regra 02: use uma barra para indicar uma relação hierárquica

Em seu URI de API, sempre use a barra para indicar uma relação hierárquica. Para entender essa regra, considere os seguintes cenários e o relacionamento dos pontos de extremidade da API. 

Uma loja pode ter clientes que fizeram muitos pedidos e cada um desses pedidos pode ter endereços de entrega, itens de menu e contas. 

| URI                                 | Status |
|-------------------------------------|--------|
| `/store/customers/{customerId}/orders` | Bom    |
| `/store/orders/{orderId}`             | Bom    |
| `/store/orders/{orderId}/menu-items`  | Bom    |

Da mesma forma, uma biblioteca pode ter livros de vários autores. Cada um desses livros tem um número ISBN.

| URI                                | Status |
|------------------------------------|--------|
| `/library/authors/books`           | Bom    |
| `/library/book/{bookId}/isbn`      | Bom    |

## Regra 03: use substantivos para nomes de recursos, não verbos

Uma das características mais importantes das APIs REST é que elas usam substantivos para indicar recursos, não verbos. E o senhor deve sempre seguir essa regra ao projetar sua API. O senhor também deve usar substantivos no plural para indicar uma coleção.

| URI                   | Espera        | Status | Por que                                      |
|-----------------------|---------------|--------|----------------------------------------------|
| `/orders`             | Coleção       | Bom    | Usa um substantivo, não um verbo             |
| `/users/{userId}`     | Usuário único | Bom    | Usa um substantivo, uma relação hierárquica adequada e uma convenção de nomenclatura |
| `/order`              | Coleção       | Ruim   | Usa substantivos no plural para coleções     |
| `/getOrder`           | Recurso único | Ruim   | Usa um verbo, camelCase                      |
| `/getUser/{userId}`   | Usuário único | Ruim   | Usa um verbo, camelCase                      |

## Regra 04: evite caracteres especiais 

O senhor deve sempre evitar caracteres especiais em seus endpoints de API. Eles podem ser confusos e tecnicamente complexos para seus usuários. Considere os exemplos ruins a seguir.

| URI                             | Status | Por que                      |
|---------------------------------|--------|------------------------------|
| `/users/12|23|23/address`       | Ruim   | Caractere especial           |
| `/orders/16/menu^items`         | Ruim   | Caractere especial ^         |

Se a sua API puder aceitar vários IDs de usuário, eles deverão ser separados por vírgula, conforme demonstrado abaixo.

| URI                             | Status | Por que                      |
|---------------------------------|--------|------------------------------|
| `/users/12,23,23/address`       | Bom    | Usa uma vírgula para separação |

## Regra 05: Evite extensões de arquivo no URI

O senhor deve sempre evitar extensões de arquivos nos nomes das APIs. Por exemplo, se a sua API puder fornecer uma saída nos formatos JSON e XML, ela nunca deverá ser assim.

| URI                                             | Status | Por que                      |
|-------------------------------------------------|--------|------------------------------|
| `/sports/basketball/teams/{teamId}.json`        | Ruim   | Extensão de arquivo no final |
| `/sports/basketball/teams/{teamId}.xml`         | Ruim   | Extensão de arquivo no final |

Em vez disso, seu cliente deve ser capaz de indicar o formato esperado em uma string de consulta, como esta. 

| URI                                             | Status | Por que                      |
|-------------------------------------------------|--------|------------------------------|
| `/sports/basketball/teams/{teamId}?format=json` | Bom    | Sem extensão de arquivo      |
| `/sports/basketball/teams/{teamId}?format=xml`  | Bom    | Sem extensão de arquivo      |

Da mesma forma, se sua API estiver fornecendo um arquivo estático, por exemplo, arquivos CSS ou JavaScript, o senhor deve usar endpoints como os seguintes para fornecer o arquivo de origem original e reduzido. O senhor também pode usar uma string de consulta para obter a versão original ou reduzida. Alguns desenvolvedores de API usam o formato de saída, como a extensão do arquivo, no final dos endpoints regulares da API, o que também é uma prática ruim.    

| URI                                     | Status | Por que                      |
|-----------------------------------------|--------|------------------------------|
| `/assets/js/jquery/3.12/min`            | Bom    | Sem extensão de arquivo      |
| `/assets/js/jquery/3.12/source`         | Bom    | Sem extensão de arquivo      |
| `/assets/js/jquery/3.12/?format=min`    | Bom    | Sem extensão de arquivo      |
| `/assets/js/jquery/3.12/?format=source` | Bom    | Sem extensão de arquivo      |
| `/menu-items?format=json`               | Bom    | Endpoint perfeitamente nomeado com formato de saída esperado em uma string de consulta |
| `/menu-items.json`                      | Ruim   | Usa o formato de saída esperado como a extensão do arquivo |

## Regra 06: use parâmetros de consulta para filtrar quando necessário 

Ao projetar sua API, o senhor deve sempre realizar a filtragem de dados usando uma string de consulta. O mesmo acontece quando o senhor espera alguns parâmetros extras, como o número de itens por página e o número da página. 

Considere este exemplo de um site de viagens. O senhor deseja descobrir para quais locais um determinado usuário viajou. E, em seguida, o senhor quer saber quais locais nos EUA o usuário já visitou. 

| URI                                   | Status | Por que                                      |
|---------------------------------------|--------|----------------------------------------------|
| `/users/{userId}/locations`           | Bom    | Hierárquico                                  |
| `/users/{userId}/locations?country=USA`| Bom    | camelCase, sem separação de palavras         |
| `/articles?per-page=10&page=2`        | Bom    | Uso adequado da string de consulta           |
| `/users/{userId}/locations/USA`       | Ruim   | Não usa uma string de consulta para filtrar dados |
| `/articles/page/2/items-per-page/10`  | Ruim   | Redundante e obscuro                         |

## Regra 07: sem barra final

Ao compartilhar seu endpoint de API com outras pessoas da sua equipe ou em público, evite usar uma barra no final dos seus endpoints de API. Considere os exemplos a seguir.

| URI                            | Status | Por que                |
|--------------------------------|--------|------------------------|
| `/users/{userId}`              | Bom    | Sem barra final        |
| `/articles/{articleId}/author` | Bom    | Sem barra final        |
| `/users/{userId}/`             | Ruim   | Trailing slash         |
| `/articles/{articleId}/author/`| Ruim   | Barra final            |

