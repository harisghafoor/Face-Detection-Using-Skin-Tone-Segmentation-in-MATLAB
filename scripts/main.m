%% Face Detection
clc
clear all
close all
I=imread('3.jfif'); % Loading the image
% These parameters set the segmentation of image by choosing the in
% intesity level , Ideally thes paramters should work globally for every
% unseen image but due to limitation of this algorithm, we had to tune the
% parameter only for the first image to get appropiraite results.
lower_thresh=20;
higher_thresh=45;
mask=segmentation(double(I),lower_thresh,higher_thresh); % This function segmentates the object from background.
[CurBB,foundFaces,num_faces,bboxes]=instance_detec(mask); % This function evaluates the criteria of face.
plot_rectangle(bboxes,CurBB,foundFaces,num_faces,I); % This function plots the rectangle around faces
%% Testing other Images:
I=imread('4.jfif');
lower_thresh=10;
higher_thresh=45;
mask=segmentation(double(I),lower_thresh,higher_thresh);
[CurBB,foundFaces,num_faces,bboxes]=instance_detec(mask);
plot_rectangle(bboxes,CurBB,foundFaces,num_faces,I);
%%
I=imread('5.jfif');
lower_thresh=10;
higher_thresh=45;
mask=segmentation(double(I),lower_thresh,higher_thresh);
[CurBB,foundFaces,num_faces,bboxes]=instance_detec(mask);
plot_rectangle(bboxes,CurBB,foundFaces,num_faces,I);
%% 
I=imread('6.jfif');
lower_thresh=10;
higher_thresh=45;
mask=segmentation(double(I),lower_thresh,higher_thresh);
[CurBB,foundFaces,num_faces,bboxes]=instance_detec(mask);
plot_rectangle(bboxes,CurBB,foundFaces,num_faces,I);
%%
