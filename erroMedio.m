%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computa��o
%Intelig�ncia Computacional - Dr. Jarbas Joaci
%Fun��o para determinar o erro medio

function eM = erroMedio(Y,Yout)
e = abs(Y - Yout);
eM = mean(e);