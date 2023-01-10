# fullCycle_Desafio
Esse desafio é muito empolgante principalmente se você nunca trabalhou com a linguagem Go!
Você terá que publicar uma imagem no docker hub. Quando executarmos:

docker run <seu-user>/fullcycle

Temos que ter o seguinte resultado: Full Cycle Rocks!!

Se você perceber, essa imagem apenas realiza um print da mensagem como resultado final, logo, vale a pena dar uma conferida no próprio site da Go Lang para aprender como fazer um "olá mundo".

Lembrando que a Go Lang possui imagens oficiais prontas, vale a pena consultar o Docker Hub.

3) A imagem de nosso projeto Go precisa ter menos de 2MB =)

Dica: No vídeo de introdução sobre o Docker quando falamos sobre o sistema de arquivos em camadas, apresento uma imagem "raiz", talvez seja uma boa utilizá-la.

Divirta-se

## Como Utilizar o código
Existe algumas maneira que podemos utilizar o codigo. O arquivo que vamos buildar vai ser o dockerfile.prod que esse docker que iremos levar pra produção

primeiro passo inicie o dockerfile
```
docker build -t fullcycle:go .
```
depois de buildar o fullcycle:go vamos iniciar ele 

```
docker run -dit --name go fullcycle:go
```
pronto ao finalizar esse processo teremos nosso ./code para apresentar na tela os dados.

## Dockerfile.prod subindo para produção

Para baixar o dockerfile.prod finalizando pode executar os seguinte comando para baixar do repositorio do docker hub 

```
docker push higordockers/fullcycle
```
caso queira fazer a propria imagem do dockerfile.prod, só executar os seguinte comandos

```
docker build -t fullcycle:prod . -f Dockerfile.prod
```
depois para executar o container 

```
docker run --name go_prod -it fullcycle:prod
```
Pronto no final deverá aparecer 

```
Full Cycle Rocks!!
```
## Tamanho da imagem em prd

1.82MB