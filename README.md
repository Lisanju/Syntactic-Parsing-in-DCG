# Syntactic-Parsing-in-DCG
Implementação em Prolog de processamento sintático pela Gramática de Cláusula Definida, com funções gramaticais e restrições de gênero, número e tempo.

## Processamento Sintático (Parsing)
Análise sintática ou parsing consiste em estruturar, de forma completa ou parcial, as sentenças de uma língua, definindo como as palavras se organizam e que funções elas cumprem (JURAFSKY & MARTIN, 2008).

A ideia, então, é implementar em Prolog um programa que contém uma Gramática e um Léxico, para gerar e reconhecer sentenças do português brasileiro. Formalmente, uma Gramática é uma quádrupla (G = N, T, P, S), em que N é um conjunto de símbolos não-terminais, T é um conjunto de símbolos terminais, P é um conjunto de regras de produção e S é o símbolo inicial da Gramática. Trato de uma Gramática Livre de Contexto, cujas regras P de G são da forma N->(N U T). Isto é, as regras de produção da Gramática são aplicadas independentemente de qual seja o contexto do símbolo não-terminal, podendo ser reescrito por um símbolo não-terminal ou um símbolo terminal. O Léxico é o conjunto de palavras da língua, que ocupam a posição de símbolos terminais e contém informações sobre traços gramaticais especificadas para cada palavra, como gênero, número e tempo para o português brasileiro. 

## A Gramática de Cláusula Definida (DCG)
A DCG é uma Gramática que lida com a representação sintática através de símbolos separados por vírgula e sem espaço, regras terminadas por ponto, nós terminais indicados entre colchetes, sintagmas do mesmo tipo em sequência e nomes próprios iniciados em letras maiúsculas. Por exemplo:

sentença-->sintagma_nominal,sintagma_verbal.

sintagma_verbal-->verbo,sintagma_nominal.

determinante-->[o].

nome-->[gato].

nome-->[besouro].

verbo-->[esmagou].
