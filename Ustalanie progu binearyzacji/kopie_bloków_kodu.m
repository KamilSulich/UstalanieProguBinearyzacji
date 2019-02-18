%%kopie bloków kodu

%%ustawienia 
prog_dolny = input('podaj próg dolny ');
prog_gorny = input('podaj próg gorny ');
ilosc_zdjec_na_osi_x = input('podaj ilosc zdjec na osi x ');
ilosc_zdjec_na_osi_y = input('podaj ilosc zdjec na osi y ');
%%blok binearyzacji i subplotów
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
    A=ilosc_zdjec_na_osi_x*10+ilosc_zdjec_na_osi_y*100+numer_okienka_w_subplocie+1;
    subplot(A)
    obraz_03=im2bw(OBRAZ_mono,i);
    imshow(obraz_03);
    title(i);
    
end
clc;


