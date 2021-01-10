function [xc]= bayer2rgb(xb,M,N,type)
tic
[M0, N0]=size(xb);

r=zeros(M0,N0);
g=zeros(M0,N0);
b=zeros(M0,N0);
ratio_x=M/M0;
ratio_y=N/N0;
%paremvoli kontinoterou geitona
if (strcmp(type,'nearest'))
  for i=1:2:M0
       
      
       for j=1:2:N0
          
           g(i,j:j+1)=xb(i,j);
           g(i+1,j:j+1)=xb(i+1,j+1);
           r(i:i+1,j:j+1)=xb(i,j+1);
           b(i:i+1,j:j+1)=xb(i+1,j);
          
          
           
       end
         
    
  end
  %upologismos digramikis paremvolis me sineliksi pinakwn 
else
   for i=1:2:M0
          for j=1:2:N0
          
           g(i,j)=xb(i,j);
           g(i+1,j+1)=xb(i+1,j+1);
           r(i,j+1)=xb(i,j+1);
           b(i+1,j)=xb(i+1,j);
                   
           
          end
   end
  
   %upologismos sineliksis
 h=(1/4)*[1 2 1 ; 2 4 2;1 2 1] ;
 hg=(1/4)*[0 1 0;1 4 1;0 1 0];
 r= conv2(r,h);
 g = conv2(g,hg);
 b=conv2(b,h);
 r=r(2:961,2:1281);
 g=g(2:961,2:1281);
 b=b(2:961,2:1281);

   

   
end

%resize
i_x = ceil((1:M)./(ratio_x));
i_y = ceil((1:N)./(ratio_y)); 

Red = r(i_x,:);
Red = Red(:,i_y);

Green = g(i_x,:);
Green = Green(:,i_y);

Blue = b(i_x,:);
Blue = Blue(:,i_y);



xc=cat(3,Blue,Green,Red);
toc
end