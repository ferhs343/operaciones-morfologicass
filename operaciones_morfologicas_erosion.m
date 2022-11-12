clear all
close all
clc

img = imread('estrellas.jpg');
img_gris = rgb2gray(img);
umbral = 0.7;
img_bn = im2bw(img_gris, umbral);

figure(1)
imshow(img_bn)

%%erosion anal
ES = ones(6);
img_bn_ero = imerode(img_bn, ES);
figure(2)
imshow(img_bn_ero)

%%dilatacion a la misma imagen
ES_2 = ones(5)
img_bn_dil = imdilate(img_bn_ero, ES_2);
figure(3)
imshow(img_bn_dil)

%%uso de mascara
mascara = uint8(img_bn_dil);
img_objetos = mascara.*img; %extraer objetos
