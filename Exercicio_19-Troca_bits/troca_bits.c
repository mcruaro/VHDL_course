#include <stdio.h>

int main(){
	
	char in1[8];
	char out1[8];
	int counter;
	

	printf("\n-----\nInforme um novo valor em binario:\n");
	scanf("%s", in1); //Representa o ready_in, uma forma do hardware saber que um novo dado esta disponivel
	
	printf("\nValor lido: %s", in1);
	
	for(counter = 0; counter < 8; counter++){//Implementa duas coisas: um loop e o controle do counter

		if (counter > 0 && in1[counter-1] == '0' && in1[counter] == '1'){ //Testa atraves de operadores relacionais e aritiméticos o valor dos bits
			out1[counter] = '0'; //Atribui o valor a out1
		} else {
			out1[counter] = in1[counter]; //Atribui o valor a out2
		}
	}
	
	printf("\nValor novo: %s", out1); //Neste ponto o algoritmo diz que acabou de executar imprimindo o valor final
	
	
	
}

/*
SW_1. O scanf implementa o control da leitura de um dado valido, o program fica parado ate receber um dado
HW_1. O hw não tem como ficar parado ao menos que haja um sinal para isso. Esse sinal pode durar apenas 1 ciclo de clock, como dizer pro hw que agora ele ja pode comecar

SW_2. O for implementa um laço
HW_2. O conceito de laço nao existe, porem sabemos que o rising_edge(clock) e executado a toda borda de subida de clock

SW_3. O controle do for, por mais simplificado que parece em C, envolve varias coisas, como atribuir somente 1 vez o valor dele para zero, depois, constantemente testar
seu valor ate chegar a 8, alem de incrementar o valor. Note que esse incremente so ocorre enquanto o counter < 8
HW_3. Nao temos um comando for para implementar tudo isso, temos que fazer manualmente

SW_4. Note que o if else do C esta dentro de uma regiao onde se tem um controle do laço e do andamendo do counter. Por isso, parece simples a troca de bits implementa por ele
HW_4. Em hardware a maquina de estados eh usada para implementar esse controle.

*/