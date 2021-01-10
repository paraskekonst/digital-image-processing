load('dip_hw_2.mat');
%tic
rng(1);
%diamiourgia affinity pinakwn gia tis dio eikones 
graph1=Image2Graph(d2a);
graph2=Image2Graph(d2b);
%ektelesi tis mySpectralClustering gia tin prwti eikona gia diafora k 
im1k2=mySpectralClustering(graph1 , 2);
im1k2=reshape(im1k2,50,50);
im1k3=mySpectralClustering(graph1 , 3);
im1k3=reshape(im1k3,50,50);
im1k4=mySpectralClustering(graph1 , 4);
im1k4=reshape(im1k4,50,50);

%ektelesi tis mySpectralClustering gia tin deuteri eikona gia diafora k 
im2k2=mySpectralClustering(graph2 , 2);
im2k2=reshape(im2k2,50,50);
im2k3=mySpectralClustering(graph2 , 3);
im2k3=reshape(im2k3,50,50);
im2k4=mySpectralClustering(graph2 , 4);
im2k4=reshape(im2k4,50,50);

%emfanisi eikonwn meta to clustering
figure;
subplot(2,2,1);
imagesc(d2a)
title('image d2a');
subplot(2,2,2);
imagesc(im1k2)
title('k=2');
subplot(2,2,3);
imagesc(im1k3)
title('k=3');
subplot(2,2,4);
imagesc(im1k4)
title('k=4');

figure;
subplot(2,2,1);
imagesc(d2b)
title('image d2a');
subplot(2,2,2);
imagesc(im2k2)
title('k=2');
subplot(2,2,3);
imagesc(im2k3)
title('k=3');
subplot(2,2,4);
imagesc(im2k4)
title('k=4');
%toc