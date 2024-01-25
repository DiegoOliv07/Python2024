import os
from time import sleep as sl
array = [[1,2,3],
            [4,5,6],
            [7,8,9]]

def limparTela():
    if os.name == 'nt':
        os.system('cls')  
    else:
        os.system('clear')

def vef_horizontal(player):
    for i in range(len(array)):
        if array[i][0] == array[i][1] == array[i][2]:
            print(f"Player {player} venceu!!")
            return True
    return False

def vef_vertical(player):
    for i in range(len(array)):
        if array[0][i] == array[1][i] == array[2][i]:
            print(f"Player {player} venceu!!")
            return True
    return False

def vef_diagonal(player):
    if (array[0][0] == array[1][1] == array[2][2]) or (array[0][2] == array[1][1] == array[2][0]):
        print(f"Player {player} venceu!!")
        return True
    return False

def vef_jogada(jogada):
    if not jogada in jogadas:
        jogadas.append(jogada)
        return True
    return False

def jogada(jogada, simbolo):
    if jogada == 1:
        array[0][0] = simbolo
    elif jogada == 2:
        array[0][1] = simbolo
    elif jogada == 3:
        array[0][2] = simbolo
    elif jogada == 4:
        array[1][0] = simbolo
    elif jogada == 5:
        array[1][1] = simbolo
    elif jogada == 6:
        array[1][2] = simbolo
    elif jogada == 7:
        array[2][0] = simbolo
    elif jogada == 8:
        array[2][1] = simbolo
    elif jogada == 9:
        array[2][2] = simbolo




def player(player, simbolo):
    while True:
        print('Tabuleiro:')
        for i in array:
            print(f'{i[0]} | {i[1]} | {i[2]}')
        print(f'Faça sua jogada {player} ({simbolo})')
        escolha = input()
        if escolha.isdigit():
            escolha = int(escolha)
            if 1 <= escolha <= 9:
                if vef_jogada(escolha):
                    print('Jogada feita com sucesso!')
                    sl(1)
                    limparTela()
                    jogada(escolha, simbolo)
                    if vef_diagonal(player) or vef_horizontal(player) or vef_vertical(player):
                        return True
                    else:
                        break
                else:
                    print('Essa jogada já foi feita ou é inválida!!')
            else:
                print('Escolha um valor válido!')
        else:
            print('Escolha um caractere válido!!')
        sl(1)
        limparTela()
            
    if len(jogadas) == 9:
        print('Velha!!!')
        return True
def play():
    print('Jogue esse divertido jogo da velha!')
    print('Player 1 = ✗\nPlayer 2 = ●\n')
    while True:
        if player("Player 01", "✗") or player("Player 02", "●"):
            sl(1.5)
            break

jogadas = []
