function [  ] = saveasppm( x , filename , K )
%protupo PPM gia kvantismeni RGB eikona 
tic
 [M, N ,Z]=size(x);
 fileID=fopen(filename , 'w');
 fprintf( fileID, '%s %d %d %d\n','P6', N, M,K);
 if(K<0||K>65536)
     error('input K must be an intiger between 0 and 65536' );
  %metafora pixel sto arxeio me tin seira rgbgb...    
 elseif (K<256)
     for i=1:M
         for j=1:N
             fwrite(fileID,x(i,j,:),'uint8','l');
         end
     end
 else
     for i=1:M
         for j=1:N
             fwrite(fileID,x(i,j,:),'uint16','b');
         end
     end
 end
 fclose(fileID);
 toc
end

