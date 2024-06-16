close all;
clear all;
clc;

%% Constantes
k = 1.3806e-23; % [J/K] Constante de Boltzmann
q = 1.60223e-19; % [C] Carga del electron
T = 300; % [K] Temperatura de trabajo
vth = k*T/q; % [V] Tensión termica
%% Lectura del archivo
archivo = 'pruebas_amps.txt';

% Leo el archivo. Salteo la primera fila ya que esa tiene los nombres de las columnas
data = dlmread(archivo, '\t', 1, 0); % Nombre del archivo, delimitador
t1 = data(:, 1);
ID_1 = data(:, 2);

archivo = 'correccion.txt';
data = dlmread(archivo, '\t', 1, 0); % Nombre del archivo, delimitador
t2 = data(:, 1);
ID_2 = data(:, 2);

figure;
hold on;
grid on;
plot(t1, ID_1);
plot(t2, ID_2);
xlim([0,max(t2)/5])



