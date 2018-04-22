%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Inteligência Computacional - Dr. Jarbas Joaci
%Função que retorna o Coeficiente de Determinação Ajustado R^2aj

%função recebe (valores reais, valores estimados, matriz dos polinomios) e 
%retorna o coeficiente de determinação R^2 ajuastado
function coef = Raj(Y,Yout,poli)

[~,grau] = size(poli); %grau do polinimio
[tamanho,~] = size(Y); %tamanho do vetor de saidas

ymed = sum(Y)/tamanho;

SQe = 0;
for k = 1:tamanho
   SQe = SQe + (Y(k) - Yout(k))^2; %soma para calcular a somatorio dos
   %quadrados das diferenças de y e yout
end   
%SQe vale a soma dos quadrados das diferenças entre y e yout

Syy=0;
for w = 1:tamanho
   Syy = Syy + (Y(w) - ymed)^2; %soma para calcular a soma dos quadrados 
   %das diferenças entre y e ymed
end   
%Syy vale a soma dos quadrados das diferenças entre y e ymed

coef =  1 - (SQe/(tamanho - grau + 1))/(Syy/(tamanho - 1)); %coef vale o 
%coeficiente de determinação ajustado