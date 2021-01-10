load('march.mat')

or =bayer2rgb(x , 960,1280,'nearet');
d1=bayer2rgb(x , 400,600,'nearet');
d2=bayer2rgb(x , 1000,1400,'nearet');

or11 =bayer2rgb(x , 960,1280,'nearest');
d11=bayer2rgb(x , 400,600,'nearest');
d21=bayer2rgb(x , 1000,1400,'nearest');

figure();

imshow(d1);
saveas('m1.jpg')
figure();
imshow(or);
saveas('or.jpg')
figure();
imshow(d2);
saveas('me1.jpg')

figure();
imshow(d11);
saveas('m11.jpg')
figure();
imshow(or11);
saveas('or1.jpg')
figure();
imshow(d21);
saveas('me21.jpg')