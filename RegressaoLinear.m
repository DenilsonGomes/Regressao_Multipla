%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Inteligência Computacional - Dr. Jarbas Joaci
%Implementar o modelo de regressão multipla para a base D

clear %limpa as variaveis
clc %limpa o visor

%base de dados D
D =[122 139 0.115;
 114 126 0.120;
 086 090 0.105;
 134 144 0.090;
 146 163 0.100;
 107 136 0.120;
 068 061 0.105;
 117 062 0.080;
 071 041 0.100;
 098 120 0.115]; 

x1 = D(:,1); %variavel independente x1
x2 = D(:,2); %variavel independente x2
y = D(:,3); %variavel dependente y

%matriz X
X(:,1) = x1; 
X(:,2) = x2;

B = ((X'*X)^(-1))*X'*y; %B contem as constantes
yout = X*B; %saida pela regressao multipla

plot3(x1,x2,y,'k.'); %plota as entradas x1 e x2 para as saidas y da base
hold on; %mantem o grafico
grid on; %habilita as linhas de grade
plot3(x1,x2,yout,'r'); scatter3(x1,x2,yout);%plota as entradas x1 e x2 para a saida obtida por regressao
xlabel('X1'); %eixo x1
ylabel('X2'); %eixo x2
zlabel('Y'); %eixo yout
legend('Saidas da Base', 'Saida da Regressao Multipla')

%cálculo de R^2
r = R(y,yout); %r recebe o coeficiente de determinação
EM = erroMedio(y,yout); %EM recebe o erro medio

str = ['Coeficiente de Determinação R^2: ' num2str(r)];
disp(str); %exibe a mensagem acima com o valor de r
str = ['Erro Medio: ' num2str(EM)];
disp(str); %exibe a mensagem acima com o valor de EM