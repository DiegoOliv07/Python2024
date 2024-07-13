import pandas as pd
import random

# Exemplo de dados obtidos
dados_obtidos = {
    'Tamanho': [120, 150, 200],  # em metros quadrados
    'NumQuartos': [2, 3, 4],
    'Localização': ['Central', 'Subúrbio', 'Rural'],
    'Preço': [300000, 400000, 500000]  # em reais
}

# Função para gerar dados aleatórios baseados nos dados obtidos
def gerar_dados_aleatorios(num_unidades, dados_obtidos):
    dados_gerados = {'Tamanho': [], 'NumQuartos': [], 'Localização': [], 'Preço': []}
    for _ in range(num_unidades):
        dados_gerados['Tamanho'].append(random.randint(1, 30))
        dados_gerados['NumQuartos'].append(random.randint(1, 6))
        dados_gerados['Localização'].append(random.choice(dados_obtidos['Localização']))
        dados_gerados['Preço'].append(random.randint(10000, 1000000))
    return dados_gerados

# Gerar 400 unidades
dados_finais = gerar_dados_aleatorios(400, dados_obtidos)

# Criar DataFrame e salvar em .csv
df = pd.DataFrame(dados_finais)
df.to_csv('dados_casas_sao_paulo.csv', index=False)
