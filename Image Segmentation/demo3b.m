load('dip_hw_2.mat');
tic
rng(1);

graph1=Image2Graph(d2a);
graph2=Image2Graph(d2b);


im1k2=myNCuts(graph1 ,2);

T1=calculateNcut(graph1 , im1k2);
im1k2=reshape(im1k2,50,50);
im2k2=myNCuts(graph2 ,2);

T2=calculateNcut(graph2 , im2k2);
im2k2=reshape(im2k2,50,50);

figure;
imagesc(im1k2)


figure;
imagesc(im2k2)