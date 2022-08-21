% jaccard

clc
clear all
close all

% l'image de ref
S1= niftiread('brainweb_b3n1_seg_mico.nii');
A=double(S1(:,:,95));
figure ;
imshow(A);
% l'image segmenter par un algorithme
S2= niftiread('t1_002c_seg.nii');
B=double(S2(:,:,95));
figure ;
imshow(B);

%calcule indice de similarité Jaccard 
simalarity = jaccard(A,B);