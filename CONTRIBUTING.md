## Como contribuir

### Sobre o Docker
___

Em nosso projeto optamos por usar o *docker* e o *docker-compose* como ferramentas que irão prover as dependências necessárias de desenvolvimento. Siga os seguintes passos para compilar e usar a ferramenta, caso não tenha o *docker* e o *docker-compose* sigas esses tutoriais de instalação:

* [docker](https://docs.docker.com/install/)
* [docker-compose](https://docs.docker.com/compose/install/#install-compose)

### Subindo o servidor

1) A primeira coisa que precisa fazer é entra no repositório é dar *build* na imagem, para isso digite o comando:

```
    docker-compose build dev
```

Esse comando vai garantir que o serviço *dev* estará em suas imagens do docker

2) Para iniciar o servidor django utilizar o comando:

```
  docker-compose up dev
```

Agora o servidor estará rodando na porta 8000 do seu computador, para conferir o resultado digite *localhost:8000*.


### Utilizando Docker para desenvolvimento

Agora que temos o servidor do *django* rodando o nosso projeto dentro de um container *docker*, tudo o que precisa fazer agora é editar o seu código com o seu editor preferido e atualizar a página para ver suas modificações em produção.

### Manutenção e Testes no sistema

Eventulamente precisamos entrar em nosso *container* para adicionarmos dependências, rodarmos os testes unitários, etc. Nesses casos você tem a opção de entrar dentro do *container* utilizando sua linha de comando. Para isso basta digitar:

```
  docker-compose run dev
```

Pronto, agora você estará dentro do *shell* do seu container, lembre-se que qualquer alteração de dependências que fizer dentro do *container* irá se perder em seu desligamento, para alterações persistentes altere o código do *Dockerfile* ou do docker-compose. Sempre consulte um integrante experiente antes de realizar essas alterações.
