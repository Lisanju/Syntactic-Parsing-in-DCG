# Syntactic-Parsing-in-DCG
Implementação em Prolog de processamento sintático pela Gramática de Cláusula Definida, com funções gramaticais e restrições de gênero, número e tempo.

## Processamento Sintático (Parsing)
Análise sintática ou parsing consiste em estruturar, de forma completa ou parcial, as sentenças de uma língua, definindo como as palavras se organizam e que funções elas cumprem (JURAFSKY & MARTIN, 2008).

A ideia, então, é implementar em Prolog um programa que contém uma Gramática e um Léxico, para gerar e reconhecer sentenças do português brasileiro. Formalmente, uma Gramática é uma quádrupla (G = N, T, P, S), em que N é um conjunto de símbolos não-terminais, T é um conjunto de símbolos terminais, P é um conjunto de regras de produção e S é o símbolo inicial da Gramática. Trato de uma Gramática Livre de Contexto, cujas regras P de G são da forma N->(N U T). Isto é, as regras de produção da Gramática são aplicadas independentemente de qual seja o contexto do símbolo não-terminal, podendo ser reescrito por um símbolo não-terminal ou um símbolo terminal. O Léxico é o conjunto de palavras da língua, que ocupam a posição de símbolos terminais e contém informações sobre traços gramaticais especificadas para cada palavra, como gênero, número e tempo. 

## A Gramática de Cláusula Definida (DCG)
A DCG é uma Gramática que lida com a representação sintática através de símbolos separados por vírgula e sem espaço, regras terminadas por ponto, nós terminais indicados entre colchetes, sintagmas do mesmo tipo em sequência e nomes próprios iniciados em letras maiúsculas. Por exemplo:

sentença-->sintagma_nominal,sintagma_verbal.

sintagma_verbal-->verbo,sintagma_nominal.

sintagma_nominal-->determinante,nome.

determinante-->[o].

nome-->[gato].

nome-->[besouro].

verbo-->[esmagou].

## parser.pl

Declarei apenas 14 regras de produção de sentenças, rotulei a superfície da sentença a partir das suas funções sintáticas. Então, uma sentença é uma frase constituída por sujeito e predicado. Um predicado pode ser constituído por uma cópula e um nome como objeto; um verbo transitivo e um nome como objeto; um verbo transitivo e um sintagma adjetival como objeto; um verbo transitivo indireto e um sintagma preposicional como objeto. Um sujeito pode ser constituído por um nome próprio; um determinante e um nome próprio; um determinante e um nome.

Do mesmo modo, um objeto pode ser constituído por um nome próprio; um nome; um determinante e um nome próprio; um determinante e um nome. Um sintagma adjetival pode ser constituído por um sujeito e um adjetivo. Um sintagma preposicional pode ser constituído por uma preposição e um objeto indireto.

Os símbolos terminais incluem as unidades lexicais 'nana' e 'zoinho' para nomes próprios; 'gata', 'gato' e 'tucanos' para nomes; 'ufscar' para um nome especificado como objeto indireto; 'a', 'o', 'os', 'uma' e 'um' para determinantes; 'pequeno' para adjetivo; 'é' e 'era' para cópula; 'comeu' para verbo transitivo; 'voam' para verbo transitivo indireto; 'na' para preposição.

Cada regra de produção possui atributos como gênero (G|J), número (N|M) e tempo (T), que são preenchidos pelos valores especificados no léxico de gênero (f|m), número (s|p) e tempo (pre|pas).
