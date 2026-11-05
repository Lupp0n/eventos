//variavel draw é literalmente o que diz: é um desenho
//temos algumas opções dessa variavel, as que foram faladas brevemente na aula são
//draw (só draw, essa aqui onde estamos) e draw GUI
//basicamente, a draw é tudo que acontece no jogo que tanto o jogador quando os personagens daquele universo veem
//um tiro, um saque de arma, um terremoto, feixe de luz, qualquer coisa assim, são informações que você enquanto jogador
//está vendo, mas o seu personagem também
//draw GUI por outro lado, são informações visuais que saem do "universo" do jogo, como por exemplo:
//quanto de vida você tem, as opções que você tem quando pausa o jogo, coisas que os personagens "não veem"


//quando a variável draw é criada, o gamemaker entende que as sprites agora são por sua conta
//"isso não é problema meu" - Gamemaker
//e tudo na tela some se você testar o jogo agora, com a variavel criada mas nenhum código nela
//pra 'consertar' isso basta fazer
draw_self();

//desenhando um texto
//draw_text(x,y, "posso me mover: " + string(movimento));


var _texto = "";
//ATIVIDADE - fazer um texto legal quando o objeto pode se mover
//SE eu posso me mover, então o texto é um
//SE eu não posso, é outro
if (movimento == true)
{
	_texto	= "Eba! Consigo me mover!";	
}
else
{
	_texto	= "Poxa, queria me mover..";
}

draw_text(x,y, nome_carro);

