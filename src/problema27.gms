$Title 27: O Problema do Incêndio Florestal - Combate Massivo ao Incêndio

$Ontext

## Variáveis de decisão

x1 = Número de helicópteros a serem empregados
x2 = Número de avião tanque a serem empregados
x3 = Número de avião B67 a serem empregados

## Função Objetivo

Minimizar
z = 2000*x1 + 4000*x2 + 10000*x3

Custo da operação

## Restrições

a) Restrição de demanda da área de fogo:

15*x1 + 40*x2 + 85*x3 >= 1000000

b) Restrição de disponibilidade de mão de obra:

Helicóptero

2*x1 <= 10          (pilotos)

Aviões

2*x2 + 2*x3 <= 14   (pilotos)
x2 + 3*x3 <= 22     (operadores)  

## Resultado

Depois de aplicado o algoritmo, os resultados foram:

x1 = 5 helicópteros a serem empregados
x2 = 0 aviões tanque a serem empregados
x3 = 7 aviões B67 a serem empregados

Com esses valores, a função objetivo é: 

z  = 80000 (custo minimizado da operação)

$Offtext

Positive Variable

x1 Número de helicópteros a serem empregados
x2 Número de avião tanque a serem empregados
x3 Número de avião B67 a serem empregados;

Free Variables

z Custo total da operação

Equations

obj    Função objetivo: Maximizar lucro
restr1 Restrição 1
restr2 Restrição 2
restr3 Restrição 3
restr4 Restrição 4;

obj.. z =e= 2000*x1 + 4000*x2 + 10000*x3;
restr1.. 15*x1 + 40*x2 + 85*x3 =g= 1000000;
restr2.. 2*x1 =l= 10;
restr3.. 2*x2 + 2*x3 =l= 14;
restr4.. x2 + 3*x3 =l= 22;

model problema27 /all/;

solve problema27 using mip max z;
