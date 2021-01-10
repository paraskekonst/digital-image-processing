load('dip_hw_2.mat');
%tic
rng(1);


graph1=Image2Graph(d2a);
graph2=Image2Graph(d2b);

 im1=recursivencuts(graph1);
 im1=reshape(im1,50,50);

im2=recursivencuts(graph2);
im2=reshape(im2,50,50);

figure;
subplot(1,2,1);
imagesc(d2a)
subplot(1,2,2);
imagesc(im1)


figure;
subplot(1,2,1);
imagesc(d2b)
subplot(1,2,2);
imagesc(im2)

%toc

%anadromiki methodos ncuts arxika ekteleite i mi anadromikh methodos gia   
%k=2 kai i metriki tou diaxorismou . stin sinexeia upologizetai to
%athroisma tvn kovmvn pou anikoun se kathe cluster . An den ikanopoiounte
%ta katoflia o pinakas dixotomite kai ginete anadromi .

function clId= recursivencuts(myAffinityMat)
 persistent n;      %to n xrisimopoiite wste na organothoun katalila 
   if isempty(n)    %ta clusters meta apo kathe anadromi
        n = 0;
    end
 n = n+1;
 T1=390;
 T2=0.79;
 clId=myNCuts(myAffinityMat , 2);
 nCutValue=calculateNcut(myAffinityMat , clId);
 c1=nnz(clId==1);  %arithmos akmvn poy anikoun sto prwto cluster
 c2=nnz(clId==2);  %arithmos akmvn poy anikoun sto deutero cluster
 
if not(c1<T1 || c2<T1 || nCutValue>T2)
               %dixotomisi affinty pinaka kai anadromi 
  n1=clId==1;  %evresi akmwn pou anoikoyn sto prvto cluster 
  n2=clId==2;  %evresi akmwn pou anoikoyn sto deutero cluster
  clId(n1)=recursivencuts(myAffinityMat(n1,n1))+n;
  clId(n2)=recursivencuts(myAffinityMat(n2,n2))+2*n;
 end

end