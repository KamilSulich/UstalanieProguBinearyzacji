cz;
a=1;
b=2;
c=3;
%%zapis do matpliku
save ('data1.mat','a','b','c')
d=[4 3;1 2];
%%zapis zmiennej d do pliku  ustawinia.xls  do arkusza o nazwie ,,arkusz pierwszy" do komórki A3 
xlswrite ('ustawienia programu',d,'Arkusz pierwszy','A3')