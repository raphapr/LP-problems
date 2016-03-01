$Title petrobas3

$Ontext

Temos x1 = 0, x2 = 14 e x3 =12, onde
x1 representa o custo necessário para utilizar recursos do Petróleo BRA
x2 do Petróleo AR
x3 do Xisto,
variáveis primais.

Percebe-se que o uso do Petróleo BRA não aumentaria o ganho nem reduziria os custos, portanto, o x1 não foi utilizado.

Utilizando esses valores, z é igual a 324 e o valor marginal é 1. 

$Offtext

Positive Variable

x1 Petróleo BR
x2 Petróleo AR
x3 Xisto;

Free Variables

z Minimizar gastos sabendo que o Petróleo BR custa 8 o AR custa 12 e o xisto custa 13;

Equations

obj   Função objetivo - Minimizar o uso dos recursos
rest1 Restrição 1 - 5P onde P é o penúltimo número da matrícula
rest2 Restrição 2 - 3U onde U é o último número da matrícula;

obj.. z =e= 8*x1 + 12*x2 + 13*x3;
rest1.. x1 + 2*x2 + 2*x3 =g= 52;
rest2.. x1 + x2 + (3/2)*x3 =g= 32;

model petrobras3 /all/;

solve petrobras3 using mip min z;
