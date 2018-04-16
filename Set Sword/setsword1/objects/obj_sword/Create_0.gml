/// @description Crear Variables
// You can write your code in this editor



//Variables de moviment
sword_speed = 0;			//Velocitat espasa com a tal

angle = 0;
MAX_SPEED = 15;				//Màxima velocitat espasa
speed_counter = 0;			// Velocitat acumulada
estat = 10;					// 10 = amb player, 9 = anant cap al player, 0 = desplaçant-se, 1 = quieta;
FRICCIO = 0.1;				//Fricció al desplaçar

//Variables de colisio
DISTANCIA_AGARRE = sprite_width;		//Distancia que pots agafar l'espasa
distancia = 0;				//Distancia al jugador
x = obj_player.x;			//Inicialitzar posició
y = obj_player.y;

//Moure Espasa
tocant_player = true;		//L'espasa esta agarrada pel jugador
can_i= false;				//Pot ser enganxada la espasa al jugador durant el desplaçament?