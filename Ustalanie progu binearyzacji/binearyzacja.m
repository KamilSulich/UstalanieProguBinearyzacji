cz;close all;
disp('#############EKRAN BINEARYZACJI######### ')
disp('######################################## ')
disp('prosz� czeka�, trwa binearyzacja ')
ilosc_zdjec_na_osi_x=xlsread ('ustawienia programu','Arkusz pierwszy','C2');
ilosc_zdjec_na_osi_y=xlsread ('ustawienia programu','Arkusz pierwszy','D2');
prog_dolny=xlsread ('ustawienia programu','Arkusz pierwszy','A2');
prog_gorny=xlsread ('ustawienia programu','Arkusz pierwszy','B2');
subplot_czy_figure=xlsread ('ustawienia programu','Arkusz pierwszy','H2');
sciezka_odczytu=xlsread ('ustawienia programu','Arkusz pierwszy','E2');
[dup]=bin(ilosc_zdjec_na_osi_x,ilosc_zdjec_na_osi_y,prog_dolny,prog_gorny,subplot_czy_figure,sciezka_odczytu);
clc;
disp('#############EKRAN BINEARYZACJI######### ')
disp('######################################## ')
disp('binearyzacja zako�czona')
disp('co chcesz teraz zrobi�? ')
disp('#############STEROWANIE PROGRAMEM############# ')
disp('1-powr�t do ekranu g��wnego ')
disp('2-ustawienia ')
disp('#############SZYBKA ZMIANA PROG�W I PONOWNA BINEARYZACJA############# ')
disp(' wci�nij 3  aby zmieni� najmniejszy wy�wietlany pr�g')
disp(' wci�nij 4  aby zmieni� najwi�kszy wy�wietlany pr�g')
disp(' wci�nij 5  aby zmieni� oba progi')
disp(' wci�nij 6  aby zapisa� obraz')
wybor_ekran_binearyzacji = input(' ');
clc;
if (wybor_ekran_binearyzacji==1)%%rozpocz�cie binearyzacji
   blok_glowny
 elseif (wybor_ekran_binearyzacji==2)%%zmiana ustawie�
    ustawienia
    elseif (wybor_ekran_binearyzacji==3)%%zmiana ustawie�
prog_dolny = input('podaj pr�g dolny ');
 xlswrite ('ustawienia programu',prog_dolny,'Arkusz pierwszy','A2')
 binearyzacja
    elseif (wybor_ekran_binearyzacji==4)%%zmiana ustawie�
 prog_gorny = input('podaj pr�g gorny ');
  xlswrite ('ustawienia programu',prog_gorny,'Arkusz pierwszy','B2')
  binearyzacja
    elseif (wybor_ekran_binearyzacji==5)%%zmiana ustawie�
   prog_dolny = input('podaj pr�g dolny ');
   prog_gorny = input('podaj pr�g gorny ');
   xlswrite ('ustawienia programu',prog_dolny,'Arkusz pierwszy','A2')
   xlswrite ('ustawienia programu',prog_gorny,'Arkusz pierwszy','B2')
  binearyzacja
else
end