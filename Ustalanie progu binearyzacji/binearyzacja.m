cz;close all;
disp('#############EKRAN BINEARYZACJI######### ')
disp('######################################## ')
disp('proszê czekaæ, trwa binearyzacja ')
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
disp('binearyzacja zakoñczona')
disp('co chcesz teraz zrobiæ? ')
disp('#############STEROWANIE PROGRAMEM############# ')
disp('1-powrót do ekranu g³ównego ')
disp('2-ustawienia ')
disp('#############SZYBKA ZMIANA PROGÓW I PONOWNA BINEARYZACJA############# ')
disp(' wciœnij 3  aby zmieniæ najmniejszy wyœwietlany próg')
disp(' wciœnij 4  aby zmieniæ najwiêkszy wyœwietlany próg')
disp(' wciœnij 5  aby zmieniæ oba progi')
disp(' wciœnij 6  aby zapisaæ obraz')
wybor_ekran_binearyzacji = input(' ');
clc;
if (wybor_ekran_binearyzacji==1)%%rozpoczêcie binearyzacji
   blok_glowny
 elseif (wybor_ekran_binearyzacji==2)%%zmiana ustawieñ
    ustawienia
    elseif (wybor_ekran_binearyzacji==3)%%zmiana ustawieñ
prog_dolny = input('podaj próg dolny ');
 xlswrite ('ustawienia programu',prog_dolny,'Arkusz pierwszy','A2')
 binearyzacja
    elseif (wybor_ekran_binearyzacji==4)%%zmiana ustawieñ
 prog_gorny = input('podaj próg gorny ');
  xlswrite ('ustawienia programu',prog_gorny,'Arkusz pierwszy','B2')
  binearyzacja
    elseif (wybor_ekran_binearyzacji==5)%%zmiana ustawieñ
   prog_dolny = input('podaj próg dolny ');
   prog_gorny = input('podaj próg gorny ');
   xlswrite ('ustawienia programu',prog_dolny,'Arkusz pierwszy','A2')
   xlswrite ('ustawienia programu',prog_gorny,'Arkusz pierwszy','B2')
  binearyzacja
else
end