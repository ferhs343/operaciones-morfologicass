clear all
close all
clc

img = imread('monedas.jpg');
img_gris = rgb2gray(img);
umbral = 0.2;
img_bn = im2bw(img_gris, umbral);

figure(1)
imshow(img_bn)

%%dilatacion
%ES = [1 1;1 1]; %%elemento estructural
ES = ones(6); %elemento estructural, matriz de unos de 3x3 (NxN)
img_bn_dil = imdilate(img_bn, ES);
figure(2)
imshow(img_bn_dil)

