$Title petrobas1

$Ontext

O Problema da Petrobrás

Foram usados os dois últimos dígitos da minha matrícula, 1 e 2, nas restrições

Temos x1 = 13, x2 = 19 e x3 = 0, onde 

x1 é o custo necessário para utilizar recursos do Petróleo BRA
x2 do Petróleo AR
x3 do Xisto,
variáveis primais.

Concluímos que o Xisto não aumentaria o ganho nem reduziria os custos, portanto, o x3 não foi utilizado e os valores das restrições (Gasolina e Óleo Diesel).
Utilizando esses valores, a função z é igual a 332

$Offtext

Positive Variable

x1 Petróleo BR
x2 Petróleo AR
x3 Xisto;

Free Variables

z Minimizar gastos sabendo que o Petróleo BR custa 8 o AR custa 12 e o xisto custa 15;

Equations

obj   Função objetivo - Minimizar o uso dos recursos
rest1 Restrição 1 - 5P onde P é o penúltimo número da matrícula
rest2 Restrição 2 - 3U onde U é o último número da matrícula;

obj.. z =e= 8*x1 + 12*x2 + 15*x3;
rest1.. x1 + 2*x2 =g= 51;
rest2.. x1 + x2 =g= 32;

model petrobras1 /all/;

solve petrobras1 using mip min z;
