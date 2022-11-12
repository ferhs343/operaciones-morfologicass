clear all
close all
clc

img = imread('estrellas.jpg');
img_gris = rgb2gray(img);
umbral = 0.7;
img_bn = im2bw(img_gris, umbral);

figure(1)
imshow(img_bn)

%%apertura
ES = ones(7);
img_bn_aper = imopen(img_bn, ES);
figure(2)
imshow(img_bn_aper)

%%cierre
img_bn_close = imclose(img_bn, ES)
figure(3)
imshow(img_bn_close)