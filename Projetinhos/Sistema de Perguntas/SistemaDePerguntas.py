import GeradorDePerguntas

def play():
    acertos = 99
    while True:
        if GeradorDePerguntas.pergunta():
            acertos += 1
        else:
            print('Você errou... Programa finalizado!')
            print(f'Acertos: {acertos}')
            break
        if acertos >= 100:
            print("Você zerou o game!")
            print(f"Acertos: {acertos}")
            break