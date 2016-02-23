$Title 21: O Problema de Otimização de Padrão de Corte em Placas Planas

$Ontext

## Variáveis de decisão

x1 (1A) = Número de vezes que o padrão 1 de corte será aplicado sobre a tira de 15cm x 2000 cm
x2 (1B) = Número de vezes que o padrão 1 de corte será aplicado sobre a tira de 14cm x 3000 cm
x3 (2A) = Número de vezes que o padrão 2 de corte será aplicado sobre a tira de 15cm x 2000 cm
x4 (3A) = Número de vezes que o padrão 3 de corte será aplicado sobre a tira de 15cm x 2000 cm
x5 (3B) = Número de vezes que o padrão 3 de corte será aplicado sobre a tira de 14cm x 3000 cm
x6 (2B) = Número de vezes que o padrão 2 de corte será aplicado sobre a tira de 14cm x 3000 cm

## Função Objetivo

Maximizar
z = 2*x1 + (1.2)*x2 + x3 + 3*x4 + (1.2)*(2)*(x5)

Custo total obtido por: custo do corte + perda x custo da perda.

## Restrições

a) Restrições de demanda:

Placa 2x4cm^2

7*x1 + 7*x2 + 2*x3 + x4 + x5 >= 2500

Placa 4x11cm^2

x3 + x4 + x6 + x5 >= 1000

b) Restrição de disponibilidade de estoque:

Tira 15x2000cm^2

4*x1 + 4*x3 + 4*x4 <= 2000

Tira 14x3000cm^2

4*x2 + 4*x6 + 4*x5 <= 3000

## Resultado

Depois de aplicado o algoritmo, os resultados foram:

x1 = 0
x2 = 222.2222
x3 = 472.2222
x4 = 0
x5 = 0
x6 = 527.7778

Com esses valores, a função objetivo é: 

z = 738.8889  (custo total)

$Offtext

Positive Variable

x1 Número de vezes que o padrão 1 de corte será aplicado sobre a tira de 15cm x 2000 cm (1A) 
x2 Número de vezes que o padrão 1 de corte será aplicado sobre a tira de 14cm x 3000 cm (1B) 
x3 Número de vezes que o padrão 2 de corte será aplicado sobre a tira de 15cm x 2000 cm (2A) 
x4 Número de vezes que o padrão 3 de corte será aplicado sobre a tira de 15cm x 2000 cm (3A) 
x5 Número de vezes que o padrão 3 de corte será aplicado sobre a tira de 14cm x 3000 cm (3B) 
x6 Número de vezes que o padrão 2 de corte será aplicado sobre a tira de 14cm x 3000 cm (2B);

Free Variables

z Custo total obtido por: custo do corte + perda x custo da perda;

Equations

obj    Função objetivo: Custo total
restr1 Restrição 1
restr2 Restrição 2
restr3 Restrição 3
restr4 Restrição 4;

obj.. z =e= 2*x1 + (1.2)*x2 + x3 + 3*x4 + (1.2)*(2)*(x5);
restr1.. 7*x1 + 7*x2 + 2*x3 + x4 + x5 =g= 2500;
restr2.. x3 + x4 + x6 + x5 =g= 1000;
restr3.. 4*x1 + 4*x3 + 4*x4 =l= 2000;
restr4.. 4*x2 + 4*x6 + 4*x5 =l= 3000;
 
model problema21 /all/;

solve problema21 using mip min z;
