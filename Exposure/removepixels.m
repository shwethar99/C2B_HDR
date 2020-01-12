function [] = removepixels(P,R,G,B,I)
   
   O=imresize(I, 0.5);
   P1=P;
   R1=R;
   G1=G;
   B1=B;
   P1(~any(P,2), : ) = []; 
   P1( :, ~any(P,1) ) = []; 
   
   R1(~any(R,2), : ) = []; 
   R1( :, ~any(R,1) ) = []; 
   
   G1(~any(G,2), : ) = []; 
   G1( :, ~any(G,1) ) = [];
   
   B1(~any(B,2), : ) = []; 
   B1( :, ~any(B,1) ) = [];
   
   [M, N, ~]= size(O);
 
  
   for i= 1:M-1
       for j= 1:N-1
           x= R1(i,j);
           y= G1(i,j);
           z= B1(i,j);
           O(i,j,:)=P1(i,j);
           O(i,j,1)=x;
           O(i,j,2)=y;
           O(i,j,3)=z;
       end
  
   end
   
  figure,imshow(O);
  imsave
  
  end