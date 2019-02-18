clc;close all;clear all;
%%program masowa binearyzacja,s³u¿¹cy do szybkiego ustalenia jaki próg
%%binearyzacji rpzyj¹æ i zbinearyzowaæ obraz
prog_dolny = input('podaj próg dolny ');
prog_gorny = input('podaj próg gorny ');
ilosc_zdjec_na_osi_x = input('podaj ilosc zdjec na osi x ');
ilosc_zdjec_na_osi_y = input('podaj ilosc zdjec na osi y ');
OBRAZ_mono=imread('123.png');
figure
imshow(OBRAZ_mono);
title('obraz orginalny');
numer_subplotu=0;
numer_okienka_w_subplocie=1;
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