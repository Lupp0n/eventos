//show_debug_message(global.pontos);

//MEGA ATIVIDADE E DESAFIO
/* fazendo com que o objeto controlável pelo player seja definido pela variavel global e não pelo clique do mouse
   atribuir o clique do mouse a função de tornar o objeto clicado no objeto controlável, mudando para a cor vermelha
   quando o objeto NÃO for mais o controlável, fazer com que ele retorne a cor branca.
*/

//checando se eu sou o carro atual
if (global.carro_atual == id)
{
	draw_text(x,y,global.texto);
	image_blend	=	c_red;
	//se eu for o carro atual, minha cor agora é vermelha.
	movimento	=	true;
}
else
{
	image_blend	=	c_blue;
	movimento	=	false;
	speed		=	false;
}

//checando SE o objeto passou do "limite" do mapa (da room)
//SE ele passou, então ele deve voltar para o meio da tela
var _foradomapa					= (x >= 1408 or x <= -32 or y >= 800 or y <= -32); //se o valor do eixo x for MAIOR OU IGUAL a 1408
																				   //OU o valor do eixo x for MENOR OU IGUAL a -32
																				   //OU o valor do eixo y for MAIOR OU IGUAL a 800
																				   //OU o valor do eixo y for MENOR OU IGUAL a -32
																				   //então meu objeto está FORA DO MAPA
var _dentrodomapa				= (x <= 1366 or x >= 32 or y <= -32 or y >= 736);  //se o valor do eixo x for MENOR OU IGUAL a 1366
																				   //OU o valor do eixo x for MAIOR OU IGUAL a 32
																				   //OU o valor do eixo y for MENOR OU IGUAL a 32
																				   //OU o valor do eixo y for MAIOR OU IGUAL a 736
																				   //então meu objeto está DENTRO DO MAPA
if (x and y >= _foradomapa or x and y <= _foradomapa) //SE meu objeto está fora do mapa
{
	_dentrodomapa = _dentrodomapa;
}		

show_debug_message(_dentrodomapa);