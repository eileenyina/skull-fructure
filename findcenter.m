I = imread('slice_034.png');
[rows,cols] = size(I); 
imshow(I);
I = double(I);
x = ones(rows,1)*[1:cols];
y = [1:rows]'*ones(1,cols);   
area = sum(sum(I)); 
meanx = sum(sum(I.*x))/area; 
meany = sum(sum(I.*y))/area;
hold on;
plot(meanx,meany,'r+');
cen=[meanx,meany,35,1]
affine=[-0.44726562 0 0 114.27636719;
 0 -0.44726562 0 313.27636719;
 0 0 4.5 16.25;
 0 0 0 1];
 cent=(affine*cen')'