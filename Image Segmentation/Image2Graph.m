function myAffinityMat = Image2Graph(imIn)
%metaropi mias eikonas me n kanalia se simetriko affinity pinaka 
%arkika allazoun oi diastasei tou pinaka apo MxNxc se M*Nxc etsi wste na 
%wste na exoume ola ta pixel se seira .Ws deutoro pixel tou neou pinaka
%tha exoume to prwto pixel tis deuteris gramis
%mesa stin dipli for upologizontai ta vari tou grafou.Afou o grafos den
%einai katheftintikos to varos metaksi 2 pixel upologizetai mono mia fora
%kai arxika upologizetai o miso affinity pinakas > afou teleiwsoun oi
%epanalipseis o pinakas ginetai simetrikos 
%tic
[M, N , c]=size(imIn);
myAffinityMat=zeros(M*N,M*N);
temp=reshape(imIn,M*N,c);
for i=1:M*N;
    X= temp(i,1:c);
    for j=i:N*M;
               
           Y= temp(j,1:c);
       
       myAffinityMat(i,j)=1/exp(norm(X-Y));
    end
        
end
myAffinityMat=triu(myAffinityMat,1)+myAffinityMat';

%toc
end