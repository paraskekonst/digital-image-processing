function nCutValue = calculateNcut(myAffinityMat , clusterIdx)
%upologismos tiw metrikis ncuts 
%arxika vriskoume pia pixels anikoun sto prwto kai pia sto deutero cluster
% stin sinexeia upologizoume ta assoc meta to Nassoc(A,B) kai telos to
% Ncut=2-Nassoc(A,B) to opoio einai k i epistrefomeni timi 
  c1=clusterIdx==1;
  c2=clusterIdx==2;
  
  assocAA=sum(sum(myAffinityMat(c1,c1)));%assoc(A,A)
  assocBB=sum(sum(myAffinityMat(c2,c2)));%assoc(B,B)
  assocAV=sum(sum(myAffinityMat(c1,:)));%assoc(A,V)
  assocBV=sum(sum(myAffinityMat(c2,:)));%assoc(B,V)
  Nassoc=assocAA/assocAV+assocBB/assocBV;%Nassoc(A,B)
  nCutValue=2-Nassoc; % Ncut=2-Nassoc(A,B)

end


