function clusterIdx = myNCuts(myAffinityMat ,k)
%tic
D=sum(myAffinityMat);% ypologismos tou athroismatos tvn varvn kathe node
D=diag(D);% kai metatropi tou dianismatos pinaka se diagonio pinaka
L=D-myAffinityMat;%upologismos L=D-W
[U , ~]=eigs(L,D,k,'SM');%ypologismos twn k mikrotervn idiodianismatvn 

clusterIdx=kmeans(U,k);%antistixisi etiketas sta pixel me ton algorithmo kmeans

%toc
end