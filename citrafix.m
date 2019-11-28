Img = imread('citraaa.png');
% Konvolusi dengan operator selisih terpusat
I = double(rgb2gray(Img));
d1x = [-1 0 1];
d1y = [-1;0;1];
Ix = conv2(I,d1x,'same');
Iy = conv2(I,d1y,'same');
J = sqrt((Ix.^2)+(Iy.^2));
%figure, imshow(J,[]);
K = J>10;
L = imclearborder(K);
M = imfill(L,'holes');
N = bwareaopen(M,100);
figure, imshow(N);
area = sum(sum(N))
luassebenarnya = area/14219.833333