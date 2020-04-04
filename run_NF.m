%% Title: Nimble Filter for Image Sharpening

%% Created by Zohair Al-Ameen.
% Department of Computer Science, 
% College of Computer Science and Mathematics,
% University of Mosul, 
% Mosul, Nineveh, Iraq

%% Please report bugs and/or send comments to Zohair Al-Ameen.
% Email: qizohair@uomosul.edu.iq

%% When you use this code or any part of it, please cite the following article:  
% Zohair Al-Ameen. 
% "Sharpness Improvement for Medical Images Using a New Nimble Filter." 
% 3D Research, vol. 9, no. 2, (2018): pp. 1-12. DOI: 10.1007/s13319-018-0164-0
%% INPUTS
% x --> is a given unclear image
% eta -- > controls the amount of sharpness enhancement

%% OUTPUT
% sharp --> sharpened image


%% Starting implementation %%
clear all; clc; close all;
%% Read the image
x = double(imread('2.jpg'));
%% Set eta
eta=4;
%% Process grayscale images
tic; sharp = Nimble_Filter(x, eta); toc;
%% Process color images
% tic
% sharp(:,:,1)=Nimble_Filter(x(:,:,1), eta);
% sharp(:,:,2)=Nimble_Filter(x(:,:,2), eta);
% sharp(:,:,3)=Nimble_Filter(x(:,:,3), eta);
% toc;
%% Show results
figure; imshow(uint8(x)); title('Original Image')
figure; imshow(sharp);title('Sharpened by Nimble Filter')
%% Write results as images
% imwrite(sharp,'NFout_eta4.jpg')