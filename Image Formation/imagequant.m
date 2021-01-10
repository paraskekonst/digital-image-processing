function [q] = imagequant(x,w1,w2,w3)
%kvantismos RGB eikonas
b=myquant(x(:,:,1),w1);
g=myquant(x(:,:,2),w2);
r=myquant(x(:,:,3),w3);

q=cat(3,b,g,r);


end

