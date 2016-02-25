$Title 11: O Problema da Clínica Cirúrgica

$Ontext

## Variáveis de decisão

x1 = Número de cirurgias estéticas
x2 = Número de cirurgias ortopédicas

## Função Objetivo

Maximizar
z = 30*x1 + 10*x2

Receita total

## Restrições

a) Restrições de disponibilidade de salas de consulta:

2*x1 + 2*x2 <= 36

b) Restrição de disponibilidade no centro cirúrgico:

2*x1 + x2 <= 24

b) Restrições de demanda:

Cirurgias estéticas:    x1 >= 2
Cirurgias ortopédicas:  x2 >= 4

## Resultado

Depois de aplicado o algoritmo, os resultados foram:

x1 = 10 cirurgias estéticas
x2 = 4 cirurgias ortopédicas

Com esses valores, a função objetivo é: 

z  = 340 (receita total)

$Offtext

Positive Variable

x1 Número de cirurgias estéticas
x2 Número de cirurgias ortopédicas;

Free Variables

z Receita total;

Equations

obj    Função objetivo: Receita total
restr1 Restrição 1: Disponibilidade de salas de consulta. 2h de atendimento por consulta
restr2 Restrição 2: Disponibilidade no centro cirúrgico. Cirurgias estéticas duram 2h e cirurgias ortopédicas duram 1h para máximo de 24h
restr3 Restrição 3: Demanda: no mínimo 2 cirurgias estéticas
restr4 Restrição 4: Demanda: no mínimo 4 cirurgias ortopédicas;

obj.. z =e= 30*x1 + 10*x2;
restr1.. 2*x1 + 2*x2 =l= 36;
restr2.. 2*x1 + x2 =l= 24;
restr3.. x1 =g= 2;
restr4.. x2 =g= 4;

model problema11 /all/;

solve problema11 using mip max z;
