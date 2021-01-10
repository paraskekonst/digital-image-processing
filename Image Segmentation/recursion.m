function clId= recursivencuts(myAffinityMat)
 persistent n;
   if isempty(n)
        n = 0;
    end
 n = n+1;
 T1=5;
 T2=0.8;
 clId=myNCuts(myAffinityMat , 2);
 nCutValue=calculateNcut(myAffinityMat , clId);
 c1=nnz(clId==1);
 c2=nnz(clId==2);
 
if not(c1<T1 || c2<T1 || nCutValue>T2)
  
  n1=clId==1;
  n2=clId==2;
  clId(n1)=recursion(myAffinityMat(n1,n1))+n;
  clId(n2)=recursion(myAffinityMat(n2,n2))+2*n;
 end

end