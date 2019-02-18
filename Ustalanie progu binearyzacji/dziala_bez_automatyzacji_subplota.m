prog_dolny = input('podaj próg dolny ');
prog_gorny = input('podaj próg gorny ');

OBRAZ_mono=imread('123.png');
figure
imshow(OBRAZ_mono);
title('obraz orginalny');
numer_subplotu=0;

for i=prog_dolny:0.1:prog_gorny;
    A=340+10*i;
    subplot(A)
    obraz_03=im2bw(OBRAZ_mono,i);
    imshow(obraz_03);
    title(i);
    
end
