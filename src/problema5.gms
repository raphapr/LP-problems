$Title problema5

$Ontext

## Vari�veis de decis�o

x1 = Quantidade de unidades de camisas de manga longa a serem fabricadas.
x2 = quantidade de unidades de camisas de manga curta a serem fabricadas.

## Fun��o Objetivo

Maximizar
z = 5x1 + 3.5x2

N�mero total de unidades monet�rias obtidas como lucro pela venda das camisas

## Restri��es

a) Restri��o associada � demanda do mercado:           

x1 <= 150
x2 <= 300

b) Restri��o associada ao acoplamento das vari�vies: 

(3/2)*x1 + x2 = 400

c) Restri��es de n�o negatividade:

x1, x2 >= 0

## Resultado

Depois de aplicado o algoritmo, os resultados foram:

x1 = 66.6667 unidades de camisas longas
x2 = 300 unidades de camisas curtas

Com esses valores, a fun��o objetivo �: 

z  = 1383.3333 (total de unidades obtidas como lucro)

$Offtext

Positive Variables

x1 Camisa longa
x2 Camisa curta;

Variables

z Maximizar lucro sabendo que camisa longa custa 5.0 UM e camisa manga curta custa 3.5 UM;

Equations

obj    Fun��o objetivo: Maximizar lucro
restr1 Restri��o 1: Demanda de mercado: limite di�rio de 150 camisas longas
restr2 Restri��o 2: Demanda de mercado: limite di�rio de 300 camisas curtas
restr3 Restri��o 3: 50% a mais de camisas longas + camisas curtas tem que alcancar o limite total de 400;

obj.. z =e= 5*x1 + 3.5*x2;
restr1.. x1 =l= 150;
restr2.. x2 =l= 300;
restr3.. 1.5*x1 + x2 =l= 400;

model problema5 /all/;

solve problema5 using mip max z;
