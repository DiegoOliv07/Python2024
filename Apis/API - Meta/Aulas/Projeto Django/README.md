## Introdução
Esta leitura oferece uma visão geral das etapas a serem seguidas ao trabalhar com o VS Code usando o Pipenv como ambiente virtual para criar um projeto Django. A estrutura do projeto pode variar conforme as preferências do aluno, mas a estrutura sugerida é recomendada para facilitar o desenvolvimento.

> **Observação:** As instruções podem variar em relação ao vídeo sobre a criação de um projeto Django, pois o vídeo pressupõe um Pipfile pré-configurado.

> **Observação:** Os comandos são específicos para MacOS. Usuários do Windows devem usar `python` em vez de `python3`.

## Etapas

### Etapa 1
Abra o VS Code e clique em **File (Arquivo)**. No menu suspenso, selecione **Open Folder (Abrir Pasta)** e escolha a pasta que você criou para o projeto.

Depois, clique em **Terminal** e selecione **New Terminal**.

### Etapa 2
Crie um diretório para o projeto Django executando o seguinte comando:

```bash
mkdir LittleLemon
```

### Etapa 3
Entre no diretório LittleLemon:

```bash
cd LittleLemon
```

### Etapa 4
Crie um projeto nesse diretório:

```bash
django-admin startproject BookList .
```

### Etapa 5
Ative o Pipenv:

```bash
pipenv shell
```

> **Observação:** O Pipenv deve estar instalado usando o pip em seu computador.

### Etapa 6
Abra o arquivo `Pipfile` criado no diretório do projeto e atualize-o com o seguinte código:

```toml
[[source]]
url = "https://pypi.org/simple"
verify_ssl = true
name = "pypi"

[packages]
django = "*"
djangorestframework = "*"
djangorestframework-xml = "*"
djoser = "*"
```

### Etapa 7
Instale as dependências usando o Pipfile atualizado:

```bash
pipenv install
```

> **Observação:** Você pode instalar pacotes específicos usando comandos como `pipenv install django`, o que também atualizará o Pipfile.

### Etapa 8
Crie um aplicativo Django:

```bash
python3 manage.py startapp LittleLemonDRF
```

### Etapa 9
Inicie o servidor e teste a instalação:

```bash
python3 manage.py runserver
```

> Pare o servidor pressionando `Ctrl + C` na janela do Terminal.

### Etapa 10
Crie o arquivo `urls.py` no diretório `LittleLemonDRF`:

Cole o seguinte código dentro dele:

```python
from django.urls import path
from . import views

urlpatterns = [
    path('ratings/', views.RatingsView.as_view()),
]
```

> **Observação:** As configurações específicas de URL podem variar de acordo com as views criadas.

### Etapa 11
Abra o arquivo `urls.py` no diretório do projeto e atualize-o:

```python
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include('LittleLemonDRF.urls')),
]
```

> **Observação:** As configurações de URL no nível do projeto variam de acordo com o nome do aplicativo criado.
 ---
Agradecimentos: [Coursera](https://www.coursera.org/learn/apis/supplement/oQrdH/optional-creating-a-django-project-steps-and-code)
