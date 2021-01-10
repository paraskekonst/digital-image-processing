function [x] = imagedequant(q,w1,w2,w3)
%apokvantismos RGB eikonas
b=mydequant(q(:,:,1),w1);
g=mydequant(q(:,:,2),w2);
r=mydequant(q(:,:,3),w3);

x=cat(3,b,g,r);

end

