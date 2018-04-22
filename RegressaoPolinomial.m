%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Inteligência Computacional - Dr. Jarbas Joaci
%Implementar o modelo de regressão polinomial (graus 2, 3,
%4, 5 e 6).

clear %limpa as variaveis
clc %limpa o visor 
%clf %limpa as figuras

%recebe o grau do polinomio a ser gerado
grau = input('Digite o grau do polinômio (entre 2 e 6): ');

load aerogerador.dat %carrega o arquivo

x = aerogerador(:,1); %x recebe a coluna da variavel independente
y = aerogerador(:,2); %y recebe a coluna da variavel dependente

[tamanho,~] = size(x); %recebe o tamanho de entradas

%X é a matriz dos polinomio
X(:,1) = ones(tamanho,1); %para cada entrada atribuimos o valor 1
%na primeira coluna

%Criamos as colunas x, x^2, x^3 ,...,x^grau
for i = 1:grau
    X(:,i+1) = aerogerador(:,1).^(i); %atribuimos a entrada elevada 
    %ao devido expoente
end

%operação com as matrizes para encontrarmos as constantes que multiplicam x
a = ((X'*X)^(-1))*X'*y; %a contem as constantes do polinomio

%yout é a saida polinomial obtida por regressão
yout = a(1); %yout recebe o valor da primeira constante

%yout é acrescido das outras componentes
for j = 1:grau
     yout = a(j+1)*x.^(j) + yout; %yout é acrescido da conponente x^j
 end
%yout é o polinomio obtido por regressao que relaciona y e x.

plot(x,y,'ko'); %plota as entradas x e as saidas y do arquivo aerogerador.dat
hold on; %mantem o grafico x vs y
plot(x,yout,'r'); %plota as entradas x e o polinomio obtido por regressao
ylabel('Potência gerada (KW)'); %titulo eixo vertical
xlabel('Velocidade do vento (m/s)'); %titulo eixo horizontal
%legend('Saidas do arquivo', 'Polinomio obtido por regressao', 'tl')

%cálculo de R^2 e R^2ajustado
r1 = R(y,yout); %r1 recebe o coeficiente de determinação
r2 = Raj(y,yout,X); %r2 recebe o coeficiente ajustado
em = erroMedio(y,yout); %em recebe o erro medio

str = ['Coeficiente de Determinação R^2: ' num2str(r1)];
disp(str); %exibe a mensagem acima com o valor de r1

str = ['Coeficiente de Determinação r^2 Ajustado: ' num2str(r2)];
disp(str); %exibe a mensagem acima com o valor de r2
str = ['Erro medio: ' num2str(em)];
disp(str); %exibe a mensagem acima com o valor de em