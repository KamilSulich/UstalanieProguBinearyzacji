cz
wyswietlanie_ustawien
wybor_ekran_ustawien = input(' ');
if (wybor_ekran_ustawien==1)
    blok_glowny
    elseif (wybor_ekran_ustawien==2)
stop=1;
cz;close all;
    elseif (wybor_ekran_ustawien==3)
           prog_dolny = input('podaj próg dolny ');
           xlswrite ('ustawienia programu',prog_dolny,'Arkusz pierwszy','A2')%%zapis zmiennej  do pliku 
                            %%ustawinia programu.xls , do arkusza o nazwie ,,arkusz pierwszy" do komórki B1 
                            ustawienia
    elseif (wybor_ekran_ustawien==4)
           prog_gorny = input('podaj próg gorny ');
           xlswrite ('ustawienia programu',prog_gorny,'Arkusz pierwszy','B2')
           ustawienia
     elseif (wybor_ekran_ustawien==5)
           ilosc_zdjec_na_osi_x = input('podaj ilosc zdjec na osi x ');
           xlswrite ('ustawienia programu',ilosc_zdjec_na_osi_x,'Arkusz pierwszy','C2')
           ustawienia
      elseif (wybor_ekran_ustawien==6)
           ilosc_zdjec_na_osi_y = input('podaj ilosc zdjec na osi y ');
xlswrite ('ustawienia programu',ilosc_zdjec_na_osi_y,'Arkusz pierwszy','D2')
           ustawienia
       elseif (wybor_ekran_ustawien==7)
                   sciezka_wczytania = input('podaj sciezke wczytania ');
                   z=strcat(sciezka_wczytania,'.png')
        xlswrite ('ustawienia programu',z,'Arkusz pierwszy','E2')
        ustawienia
          elseif (wybor_ekran_ustawien==9)
                   subplot=1;
        xlswrite ('ustawienia programu',subplot,'Arkusz pierwszy','H2')
        ustawienia
        elseif (wybor_ekran_ustawien==10)
                   figure=2;
        xlswrite ('ustawienia programu',figure,'Arkusz pierwszy','H2')
        ustawienia
else       
            disp('wcisnieto zly klawisz')
end

