clc;clear;

tic
image_input1 = imread('images\medical-14-A.jpg');% image_input1 is MRI images
image_input2 = imread('images\medical-14-B.jpg');% image_input1 is PET or SPECT images

I1=double(image_input1)/255;
I1 = min(1,max(0, imresize(I1,1)));  
I2=double(image_input2)/255;
I2 = min(1,max(0, imresize(I2,1) ));

Result = LRD_fusion(I1,I2);
toc
imwrite(Result,'Results\Result.jpg');
figure;imshow(image_input1);
figure;imshow(image_input2);
figure; clf; imshow(Result);


