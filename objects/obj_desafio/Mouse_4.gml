//fazendo com que o objeto mova ou pare com o mesmo botão, no caso o esquerdo do mouse
//SE eu clicar nele e o movimento for true, então ele vira false
//SE eu clicar nele e o movimento for false, então ele vira true
//if (movimento)
//{
//	movimento = false;
//}
//else
//{
//	movimento = true;
//}

//todo o código acima pode ser resumido simplesmente em:
//movimento	=	!movimento;
//literalmente quer dizer a mesma coisa do if e else, mas muito mais resumido e simplificado, exatamente como a situação pede.

//fazendo que SE eu clicar com o mouse, o objeto clicado se torne o carro atual
global.carro_atual	= id;



//falando para a variavel que o valor do NOME é o MEU nome
var _seucarro		= ("Seu piloto se chama " + nome_carro + ", aperte os cintos!");
global.texto		= _seucarro;

