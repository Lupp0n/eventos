//create é a instância "principal" do gamemaker, é a primeira a rodar quando se inicia o game
//ele funciona meio que como um esqueleto, um torso onde você adiciona a base das suas variáveis, modificando-as depois e adicionando "membros" com outros eventos

//ATIVIDADE 1 - Mostrar o nome do nosso objeto no jogo e fazer com que, ao passar do mouse por ele, o nome fique em maiúsculo e volte a ser minúsculo quando mouse sair.

//nome	=	"Kubo";

//ATIVIDADE 2 - Fazendo o Kubo se mover com as setas do teclado

//ATIVIDADE 3 - Mudando a velocidade dos quadrados conforme eu clico neles
velocidade		=	5;

//aprendendo um pouco das variaveis de objeto
//quando algo é feito no evento create, essa criação conta para todos os outros eventos
//variaveis de objeto são as de cor azul, basicamente a que nós damos o nome e uma definição
//como altura, cor do cabelo, SE tem cabelo ou é careca, APARENTEMENTE sempre atribuídos a coisas visuais
//não necessariamente no sentido estético, mas sim de coisas que são perceptíveis dentro do jogo
//como uma movimentação mais acelerada ou um golpe mais forte, elementos visuais nítidos além do visual estético.
//atividades para ver na prática logo mais.

//Variable Definitions
//é uma forma de mudar as informações de várias instâncias do mesmo objeto
//embaixo de todas as informações do objeto no inspetor, temos a opção Variable Definitions
//lá podemos adicionar uma variável e mudá-la conforme nosso gosto, deixando a alteração salva em cada instância na sala
//útil quando as informações de um único objeto precisar ser ajustada de maneira diferente para várias instâncias desse mesmo objeto
//facilitando a criação de npcs distintos, inimigos mais fortes e ideias semelhantes

//ATIVIDADE 4 - Criando uma Variable Definitions para o nome do objeto, fazendo com que cada instância tenha um nome diferente
//e no clique do botão esquerdo do mouse, fazer com que cada um se apresente para o jogador

//built in variable - são variáveis verdes que já vem embutidas ao criar um objeto
//speed, posição x e y, coisas que o gamemaker PRECISA ter a informação para que nós consigamos colocar o objeto na room, mexer e posicioná-lo com o mouse, etc
//podemos alterá-las no código e também no inspetor de objeto

//mini atividade - fazer com que o objeto ganhe velocidade ao segurar espaço e voltar ao normal quando parar de apertar a tecla

//mais variaveis embutidas, dessa vez foi um pouco sobre a rotação dos objetos usando
image_angle	=	0;
//e como isso pode ser útil caso queiramos por exemplo, rotacionar o objeto ao colocar o mouse sobre ele.
//também foi mostrado a direção que um objeto estaria "encarando" por assim dizer, como por exemplo:
//direction	=	90;
//speed		=	3;

//variaveis amarelas são variaveis temporarias, elas funcionam apenas no evento em que foram criadas
//por exemplo, não posso criar uma variavel temporaria aqui no CREATE e depois usá-la no STEP, o programa vai apontar erro
//elas só são criadas com o prefixo VAR escrito no começo, caso não tenha, o programa irá identificar como variavel de objeto (azul) muito possivelmente

//exemplo de utilidade de uma variavel temporaria
/* eu posso fazer meu código mostrar o nome do objeto dessa maneira:

show_message(nome); //e ao iniciar o jogo, o objeto vai dizer seu nome, normal.
agora em uma situação que eu quero nome E SOBRENOME, eu vou fazer outra variável pra isso.
com a variavel sobrenome feita no Variables Definitions, bastaria pedir para o programa mostrar os dois juntos, assim:

show_message(nome + " " + sobrenome);

e funciona de maneira normal também, mas para uma leitura fácil do código É AÍ que entra uma variavel temporaria.
ela basicamente aparece quando queremos uma informação apareça em um momento específico, ou que só vai aparecer uma vez durante todo o jogo
daí podemos fazer assim:
*/
var _nome_completo = (nome + " " + sobrenome);
//desse jeito agora, é só pedir normalmente:
//show_message(_nome_completo); - a cor amarela indica que a mensagem que vai aparecer é derivada da variavel temporaria
//ela está usando informações de duas variaveis de objetos que podemos usar quando quisermos de maneira separada, mas aqui ela junta
//e nos dá a informação completa, facilitando a leitura do código.

//ATIVIDADE 5 - usando o exemplo aprendido para criar variaves onde temos as seguintes informações:
//nome da rua
//número da casa
//nome do bairro
//fazer esses dados serem mostrados em um único show message com a variavel temporaria.

var _dados = ("Seu nome é: " + _nome_completo + "\nNome da Rua: " + nome_rua	+ "\nN°: " + string(numero_casa) + "\nNo Bairro: " + nome_bairro);
show_message(_dados);

//variaveis GLOBAIS, tem a cor rosa e podem ser usadas por todos e quaisquer objetos e instâncias do jogo, mesmo sendo feita em apenas um evento
//elas TEM que rodar PRIMEIRO que todas as outras, do contrário dará erro
//são uteis para conter informações que estaram no jogo o TEMPO TODO como VIDA e PONTUAÇÃO
//no zomboid por exemplo, acredito que o número de zumbis que o jogador matou durante toda a gameplay seja uma variavel global (mesmo que seja feito em lua)
//é uma informação que pode ser acessada a todo momento.
//objetos geralmente não são o melhor lugar para rodar variaveis globais pela necessidade de serem criados antes mesmo do que o próprio jogo
//o melhor é fazer utilizando SCRIPTS







