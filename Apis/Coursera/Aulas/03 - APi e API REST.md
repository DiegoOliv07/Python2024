# Introdução às APIs REST

## O que é REST?

REST (Representational State Transfer) é um estilo arquitetural para projetar aplicações em rede. Ele oferece uma maneira leve de criar APIs que são escaláveis e fáceis de integrar com outros sistemas.

### Principais Restrições do REST

1. **Arquitetura Cliente-Servidor**:
   - Existe uma clara separação entre o cliente (que solicita recursos) e o servidor (que fornece recursos).

2. **Statelessness (Estado)**:
   - O servidor não armazena nenhum estado do cliente. Cada requisição do cliente deve conter todas as informações necessárias para que o servidor a processe.
   - Exemplo: Se um gerente deseja ver os itens do menu de um pedido específico, ele deve especificar explicitamente o ID do pedido na requisição (`/pedidos/16/itensmenu`).

3. **Capacidade de Cache**:
   - As respostas do servidor podem ser armazenadas em cache pelos clientes ou intermediários (como proxies), o que pode melhorar o desempenho ao reduzir a necessidade de requisições repetitivas ao servidor.

4. **Sistema em Camadas**:
   - A arquitetura deve ser composta por várias camadas (por exemplo, balanceadores de carga, firewalls, bancos de dados) que podem ser adicionadas ou removidas sem afetar a capacidade do cliente de acessar a API.

5. **Interface Uniforme**:
   - Os recursos são identificados de forma única por URIs, e as interações com esses recursos são realizadas usando um conjunto padronizado de métodos (métodos HTTP como GET, POST, PUT, DELETE).
   - As respostas devem estar em um formato padrão (por exemplo, JSON, XML) que seja facilmente compreensível pelos clientes.

6. **Código sob Demanda (opcional)**:
   - Servidores podem opcionalmente enviar código executável (por exemplo, JavaScript) para clientes para estender a funcionalidade. No entanto, isso não é comumente usado na maioria das APIs REST.

### Entendendo Recursos em APIs REST

Recursos são entidades fundamentais em APIs REST. Eles representam os dados ou objetos com os quais a API interage.

#### Exemplos de Recursos:

- **Pedidos**:
  - `/pedidos`: Retorna todos os pedidos.
  - `/pedidos/16`: Retorna detalhes do pedido com ID 16.
  - `/pedidos/16/cliente`: Retorna detalhes do cliente associado ao pedido 16.

- **Itens de Menu**:
  - `/itensmenu`: Retorna todos os itens do menu.
  - `/itensmenu?categoria=entradas`: Retorna itens do menu filtrados por categoria (por exemplo, entradas).

#### Tipos de Recursos:

- Cada endpoint da API retorna tipos específicos de recursos (por exemplo, pedidos, itens do menu, clientes).
- A filtragem pode ser realizada usando parâmetros de consulta (query parameters) (por exemplo, `?categoria=entradas`) para estreitar os resultados sem alterar o endpoint.

### Conclusão

Compreender esses princípios e convenções do REST ajudará você a projetar APIs que sejam eficientes, escaláveis e fáceis de manter. Nas próximas lições, você irá aprofundar-se em melhores práticas, incluindo convenções de nomes e estratégias de otimização para APIs REST.
