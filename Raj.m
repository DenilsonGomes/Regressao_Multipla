%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computa��o
%Intelig�ncia Computacional - Dr. Jarbas Joaci
%Fun��o que retorna o Coeficiente de Determina��o Ajustado R^2aj

%fun��o recebe (valores reais, valores estimados, matriz dos polinomios) e 
%retorna o coeficiente de determina��o R^2 ajuastado
function coef = Raj(Y,Yout,poli)

[~,grau] = size(poli); %grau do polinimio
[tamanho,~] = size(Y); %tamanho do vetor de saidas

ymed = sum(Y)/tamanho;

SQe = 0;
for k = 1:tamanho
   SQe = SQe + (Y(k) - Yout(k))^2; %soma para calcular a somatorio dos
   %quadrados das diferen�as de y e yout
end   
%SQe vale a soma dos quadrados das diferen�as entre y e yout

Syy=0;
for w = 1:tamanho
   Syy = Syy + (Y(w) - ymed)^2; %soma para calcular a soma dos quadrados 
   %das diferen�as entre y e ymed
end   
%Syy vale a soma dos quadrados das diferen�as entre y e ymed

coef =  1 - (SQe/(tamanho - grau + 1))/(Syy/(tamanho - 1)); %coef vale o 
%coeficiente de determina��o ajustado