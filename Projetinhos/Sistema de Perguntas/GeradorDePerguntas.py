import random

def pergunta(questao=None, resposta=None):
    questoes_respostas = {
    'Dobro de 62 é igual a?': 124,
    '40 dividido por 2 é igual a?': 20.0,
    '34 dividido é igual a?': 34.0,
    '77 dividido por 2 é igual a?': 38.5,
    '49 subtraído por 96 é igual a?': -47,
    '25 multiplicado por 26 é igual a?': 650,
    '63 subtraído por 73 é igual a?': -10,
    '100 multiplicado por 20 é igual a?': 2000,
    '8 dividido por 2 é igual a?': 4.0,
    '82 dividido é igual a?': 82.0,
    '46 multiplicado por 87 é igual a?': 4002,
    '5 multiplicado por 3 é igual a?': 15,
    '64 dividido é igual a?': 64.0,
    '100 subtraído por 36 é igual a?': 64,
    '49 multiplicado por 92 é igual a?': 4508,
    '100 subtraído por 21 é igual a?': 79,
    '46 dividido é igual a?': 46.0,
    '33 subtraído por 68 é igual a?': -35,
    '13 multiplicado por 78 é igual a?': 1014,
    '16 multiplicado por 98 é igual a?': 1568,
    '15 subtraído por 63 é igual a?': -48,
    '48 dividido por 2 é igual a?': 24.0,
    '40 subtraído por 37 é igual a?': 3,
    '47 multiplicado por 66 é igual a?': 3102,
    '25 subtraído por 5 é igual a?': 20,
    '100 subtraído por 66 é igual a?': 34,
    '51 multiplicado por 96 é igual a?': 4896,
    '74 multiplicado por 62 é igual a?': 4588,
    '8 multiplicado por 20 é igual a?': 160,
    '21 multiplicado por 6 é igual a?': 126,
    '73 multiplicado por 25 é igual a?': 1825,
    '2 multiplicado por 43 é igual a?': 86,
    '41 multiplicado por 77 é igual a?': 3157,
    '11 multiplicado por 89 é igual a?': 979,
    '22 multiplicado por 85 é igual a?': 1870,
    '29 subtraído por 92 é igual a?': -63,
    '12 multiplicado por 18 é igual a?': 216,
    '31 multiplicado por 64 é igual a?': 1984,
    '2 multiplicado por 47 é igual a?': 94,
    '32 multiplicado por 10 é igual a?': 320,
    '46 multiplicado por 16 é igual a?': 736,
    '38 multiplicado por 33 é igual a?': 1254,
    '35 multiplicado por 99 é igual a?': 3465,
    '34 multiplicado por 95 é igual a?': 3230,
    '12 multiplicado por 13 é igual a?': 156,
    '71 dividido é igual a?': 71.0,
    '91 subtraído por 15 é igual a?': 76,
    '3 dividido por 2 é igual a?': 1.5,
    '8 subtraído por 19 é igual a?': -11,
    '92 subtraído por 2 é igual a?': 90,
    '16 multiplicado por 61 é igual a?': 976,
    '79 subtraído por 90 é igual a?': -11,
    '40 multiplicado por 14 é igual a?': 560,
    '85 dividido é igual a?': 85.0,
    '20 multiplicado por 63 é igual a?': 1260,
    '78 multiplicado por 60 é igual a?': 4680,
    '38 dividido por 2 é igual a?': 19.0,
    '47 dividido por 2 é igual a?': 23.5,
    '98 multiplicado por 49 é igual a?': 4802,
    '15 multiplicado por 23 é igual a?': 345,
    '92 multiplicado por 23 é igual a?': 2116,
    '53 dividido é igual a?': 53.0,
    '95 multiplicado por 3 é igual a?': 285,
    '64 subtraído por 94 é igual a?': -30,
    '69 multiplicado por 72 é igual a?': 4968,
    '68 multiplicado por 92 é igual a?': 6256,
    '20 multiplicado por 77 é igual a?': 1540,
    '59 multiplicado por 36 é igual a?': 2124,
    '67 multiplicado por 61 é igual a?': 4087,
    '47 multiplicado por 31 é igual a?': 1457,
    '94 multiplicado por 41 é igual a?': 3854,
    '21 multiplicado por 59 é igual a?': 1239,
    '57 dividido é igual a?': 57.0,
    '8 multiplicado por 16 é igual a?': 128,
    '51 subtraído por 84 é igual a?': -33,
    '13 subtraído por 83 é igual a?': -70,
    '2 multiplicado por 9 é igual a?': 18,
    '17 multiplicado por 54 é igual a?': 918,
    '61 multiplicado por 56 é igual a?': 3416,
    '100 dividido é igual a?': 100.0,
    '68 subtraído por 56 é igual a?': 12,
    '59 subtraído por 22 é igual a?': 37,
    '16 subtraído por 71 é igual a?': -55,
    '5 multiplicado por 35 é igual a?': 175
    }
    if questao is None:
        questao = random.choice(list(questoes_respostas.keys()))
    if resposta is None:
        resposta = questoes_respostas[questao]
    
    numeros = list(range(resposta - 2, resposta + 3))
    itens_sorteados = random.sample(numeros, 4)
    
    alternativas = {
        "a": itens_sorteados[0],
        "b": itens_sorteados[1],
        "c": itens_sorteados[2],
        "d": itens_sorteados[3]
    }
    if not resposta in itens_sorteados:
        alternativas[random.choice(list(alternativas.keys()))] = resposta
    
    print('//////////////////////////////////////////////////')
    print(questao)
    
    for i in list(alternativas.keys()):
        print(f'{i}) {alternativas[i]}')
    
    resp = input("Digite a alternativa correta: ").lower().strip()
    
    if resp in list(alternativas.keys()):
        if alternativas[resp] == resposta:
            print("Você acertou!!!")
            return True
        else:
            print("Tente novamente!")
    else:
        return False
    
    print('//////////////////////////////////////////////////')