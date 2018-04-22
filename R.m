%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Inteligência Computacional - Dr. Jarbas Joaci
%Função que retorna Coeficiente de Determinação na Regressão Múltipla R^2

%função recebe (valores reais, valores estimados) e retorna o coeficiente de
%determinação R^2
function coef = R(Y,Yout) 
[tamanho,~] = size(Y); %tamanho recebe o numero de saidas

ymed = sum(Y)/2250; %ymed recebe o valor medio das saidas Y

SQe = 0;
for k = 1:tamanho
   SQe = SQe + (Y(k) - Yout(k))^2; 
end   
%SQe recebe o somatorio dos quadrados das diferenças entre y e yout

Syy=0;
for w = 1:tamanho
   Syy = Syy + (Y(w) - ymed)^2;
end   
%Syy recebe o somatorio dos quadrados das diferenças entre y e ymed

coef =  1 - SQe/Syy; %coef vale o coeficiente de determinação