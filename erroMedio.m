%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Inteligência Computacional - Dr. Jarbas Joaci
%Função para determinar o erro medio

function eM = erroMedio(Y,Yout)
e = abs(Y - Yout);
eM = mean(e);