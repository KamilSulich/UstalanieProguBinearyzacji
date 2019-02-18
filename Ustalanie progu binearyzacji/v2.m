clc;close all;clear all;
%%program masowa binearyzacja,s³u¿¹cy do szybkiego ustalenia jaki próg
%%binearyzacji rpzyj¹æ i zbinearyzowaæ obraz
wybor_sposobu_wpisania_parametrow = input('1-domyslne parametry(progi od 0.4 do 0.9 obraz 3x3) , 2 -wpisanie recznie parametrow ');
if (wybor_sposobu_wpisania_parametrow==2)
        prog_dolny = input('podaj próg dolny ');
        prog_gorny = input('podaj próg gorny ');
        ilosc_zdjec_na_osi_x = input('podaj ilosc zdjec na osi x ');
        ilosc_zdjec_na_osi_y = input('podaj ilosc zdjec na osi y ');
else
        prog_dolny = 0.4;
        prog_gorny = 0.9;
        ilosc_zdjec_na_osi_x = 3;
        ilosc_zdjec_na_osi_y = 3;
end
ilosb_obrazow_w_subplocie=ilosc_zdjec_na_osi_x*ilosc_zdjec_na_osi_y;
OBRAZ_mono=imread('123.png');
figure
title('obraz orginalny');
numer_subplotu=0;
numer_okienka_w_subplocie=1;
A=ilosc_zdjec_na_osi_x*100+ilosc_zdjec_na_osi_y*10+numer_okienka_w_subplocie
subplot (A)
imshow(OBRAZ_mono);
title('obraz oryginalny');
krok_binearyzacji=(prog_gorny-prog_dolny)/(ilosc_zdjec_na_osi_x*ilosc_zdjec_na_osi_y)
for i=prog_dolny:krok_binearyzacji:prog_gorny;
    numer_okienka_w_subplocie=numer_okienka_w_subplocie+1;
    A=ilosc_zdjec_na_osi_x*100+ilosc_zdjec_na_osi_y*10+numer_okienka_w_subplocie
    subplot(A)
    obraz_03=im2bw(OBRAZ_mono,i);
    imshow(obraz_03);
    title(i);
    i
end

