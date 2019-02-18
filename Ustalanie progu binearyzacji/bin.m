function[ilosb_obrazow_w_subplocie]=bin(ilosc_zdjec_na_osi_x,ilosc_zdjec_na_osi_y,prog_dolny,prog_gorny,subplot_czy_figure,sciezka_odczytu)


ilosb_obrazow_w_subplocie=ilosc_zdjec_na_osi_x*ilosc_zdjec_na_osi_y;

OBRAZ_mono=imread('Bez tytu³u.jpg');
figure
title('obraz orginalny');
numer_okienka_w_subplocie=0;
subplot_numer_obrazu_org=ilosc_zdjec_na_osi_x*10+ilosc_zdjec_na_osi_y*100+numer_okienka_w_subplocie+1;
if subplot_czy_figure==1
subplot (subplot_numer_obrazu_org)
else
    figure
end
imshow(OBRAZ_mono);
title('obraz oryginalny');
krok_binearyzacji=(prog_gorny-prog_dolny)/(ilosc_zdjec_na_osi_x*ilosc_zdjec_na_osi_y-2);
for i=prog_dolny:krok_binearyzacji:prog_gorny;
    numer_okienka_w_subplocie=numer_okienka_w_subplocie+1;
    A=ilosc_zdjec_na_osi_x*10+ilosc_zdjec_na_osi_y*100+numer_okienka_w_subplocie+1;
    if subplot_czy_figure==1
    subplot(A)
    obraz_03=im2bw(OBRAZ_mono,i);
    imshow(obraz_03);
    title(i);
    else
    figure
    obraz_03=im2bw(OBRAZ_mono,i);
    imshow(obraz_03);
    title(i);
end
end
