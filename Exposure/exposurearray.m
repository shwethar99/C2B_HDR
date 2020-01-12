function [P1,P2,P3,P4,R1,R2,R3,R4,G1,G2,G3,G4,B1,B2,B3,B4,I]= exposurearray()
I = imread('/MATLAB Drive/Exposure/HDR/global.bmp');
[M,N,~] = size(I);
P1=zeros(M,N);
R1=zeros(M,N);
G1=zeros(M,N);
B1=zeros(M,N);

P2=zeros(M,N);
R2=zeros(M,N);
G2=zeros(M,N);
B2=zeros(M,N);

P3=zeros(M,N);
R3=zeros(M,N);
G3=zeros(M,N);
B3=zeros(M,N);

P4=zeros(M,N);
R4=zeros(M,N);
G4=zeros(M,N);
B4=zeros(M,N);
for i = 1:M-1
    for j = 1:N-1
        if mod(i,2) == 1 && mod(j,2) == 1
            P1(i,j)= I(i,j)/2;
            R1(i,j)= I(i,j,1)/2;
            G1(i,j)= I(i,j,2)/2;
            B1(i,j)= I(i,j,3)/2;
            P2(i,j)= 0;
            R2(i,j)=0; B2(i,j)=0; G2(i,j)=0;
            P3(i,j)= 0;
            R3(i,j)=0; B3(i,j)=0; G3(i,j)=0;
            P4(i,j)= 0;
            R4(i,j)=0; G4(i,j)=0; B4(i,j)=0;
        elseif mod(i,2) == 1 && mod(j,2) == 0
            P2(i,j)= I(i,j)/4;
            R2(i,j)= I(i,j,1)/4;
            G2(i,j)= I(i,j,2)/4;
            B2(i,j)= I(i,j,3)/4;
            P1(i,j)= 0;
            R1(i,j)=0; B1(i,j)=0; G1(i,j)=0;
            P3(i,j)= 0;
            R3(i,j)=0; B3(i,j)=0; G3(i,j)=0;
            P4(i,j)= 0;
            R4(i,j)=0; G4(i,j)=0; B4(i,j)=0;
        elseif mod(i,2) == 0 && mod(j,2) == 1
            P3(i,j)= I(i,j)/8;
            R3(i,j)= I(i,j,1)/8;
            G3(i,j)= I(i,j,2)/8;
            B3(i,j)= I(i,j,3)/8;
            P2(i,j)= 0;
            R2(i,j)=0; B2(i,j)=0; G2(i,j)=0;
            P1(i,j)= 0;
            R1(i,j)=0; B1(i,j)=0; G1(i,j)=0;
            P4(i,j)= 0;
            R4(i,j)=0; G4(i,j)=0; B4(i,j)=0;
        else
            P4(i,j)= I(i,j)/16;
            R4(i,j)= I(i,j,1)/16;
            G4(i,j)= I(i,j,2)/16;
            B4(i,j)= I(i,j,3)/16;
            P2(i,j)= 0;
            R2(i,j)=0; B2(i,j)=0; G2(i,j)=0;
            P3(i,j)= 0;
            R3(i,j)=0; B3(i,j)=0; G3(i,j)=0;
            P1(i,j)= 0;
            R1(i,j)=0; G1(i,j)=0; B1(i,j)=0;
        end
    end
end
end