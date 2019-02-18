clc;close all;clear all;
%%program masowa binearyzacja,s³u¿¹cy do szybkiego ustalenia jaki próg
%%binearyzacji rpzyj¹æ i zbinearyzowaæ obraz
disp('Witaj w programie s³u¿¹cym do masowej binearyzacji obrazów')
disp('program wyœwietli obraz orginalny i obrazy bêd¹ce wynikiem binearyzacji ')
disp('z programi od wartoœci dolnego progu do wartoœci dolnego progu. ')
disp('Czy chcesz u¿yæ domyœlnych parametrów programu?')
disp(' wciœnij 1 i zatwierdŸ enterem aby zbinearyzowaæ obraz  domyslnymi parametrami(progi od 0 do 1 obraz 3x3)')
disp(' wciœnij 2 i zatwierdŸ enterem aby wpisaæ recznie parametry')
disp('')
wybor_sposobu_wpisania_parametrow = input(' ');
clc;
if (wybor_sposobu_wpisania_parametrow==2)
        prog_dolny = input('podaj próg dolny ');
        prog_gorny = input('podaj próg gorny ');
        ilosc_zdjec_na_osi_x = input('podaj ilosc zdjec na osi x ');
        ilosc_zdjec_na_osi_y = input('podaj ilosc zdjec na osi y ');
else
        prog_dolny = 0;
        prog_gorny = 1;
        ilosc_zdjec_na_osi_x = 3;
        ilosc_zdjec_na_osi_y = 3;
end
clc;
ilosb_obrazow_w_subplocie=ilosc_zdjec_na_osi_x*ilosc_zdjec_na_osi_y;
OBRAZ_mono=imread('111.png');
figure
title('obraz orginalny');
numer_subplotu=0;
numer_okienka_w_subplocie=0;
subplot_numer_obrazu_org=ilosc_zdjec_na_osi_x*10+ilosc_zdjec_na_osi_y*100+numer_okienka_w_subplocie+1;
subplot (subplot_numer_obrazu_org)
imshow(OBRAZ_mono);
title('obraz oryginalny');
krok_binearyzacji=(prog_gorny-prog_dolny)/(ilosc_zdjec_na_osi_x*ilosc_zdjec_na_osi_y-2);
for i=prog_dolny:krok_binearyzacji:prog_gorny;
    numer_okienka_w_subplocie=numer_okienka_w_subplocie+1;
    A=ilosc_zdjec_na_osi_x*100+ilosc_zdjec_na_osi_y*10+numer_okienka_w_subplocie+1;
    subplot(A)
    obraz_03=im2bw(OBRAZ_mono,i);
    imshow(obraz_03);
    title(i);
    
end
5

