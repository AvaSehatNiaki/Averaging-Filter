%Read and display the input image
I = imread('testpattern.tif');
imshow(I);

%Compute the integral image.
intImage = integralImage(I);

%Apply a 20-by-20 average filter
avgH = integralKernel([1 1 20 20], 1/100);
J = integralFilter(intImage, avgH);

J = uint8(J);
figure
imshow(J);