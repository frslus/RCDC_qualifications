%% =========================================================================
% Zadanie eliminacyjne konkursu RCDC - Skrypt Inicjalizacyjny
% Zespół (nazwa)
% =========================================================================
clear; clc;


%% 1. Parametry początkowe symulacji
v_ego = 80;        % [m/s] Prędkość początkowa naszego pojazdu
v_lead = 25;       % [m/s] Prędkość pojazdu poprzedzającego 
d_init = 300;      % [m] Dystans początkowy.

%% 2. Parametry czujników i filtru 
radar_max_range = 150;  % [m] Zasięg przedniego radaru 
fs = 100;               % [Hz] Częstotliwość próbkowania
tau_radar = 0.02;       % [s] Stała czasowa filtru radaru. 

%% 3. Inne parametry
ttc_threshold = 1.5;   % [s] Krytyczny czas do kolizji
a_ego = 0;              % [m/s^2] Przyspieszenie samochodu
a_max = 10;             % [m/s^2] Maksymalne przyspieszenie samochodu

%% 4. Otwarcie i uruchomienie modelu
open_system("ADAS_System");