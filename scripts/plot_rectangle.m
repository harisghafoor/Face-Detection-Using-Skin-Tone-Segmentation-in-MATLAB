function plot_rectangle(bboxes,CurBB,foundFaces,num_faces,image)
% This function plots the rectangle around the faces.
disp('Number of faces found :');
disp(num_faces);
if (num_faces>0)
    indexs=find(foundFaces==1);
    CurBB=bboxes(indexs,:);
    disp('The Length,width,x and y features of rectangles are :')
    disp(CurBB)
else
    close all;
end
imshow(uint8(image));
title(['Face Detection  (',num2str(num_faces),') Faces '])
hold on
for i=1:size(CurBB,1)
    BB = CurBB(i,:);
    rectangle('Position', [BB(1),BB(2),BB(3),BB(4)],'EdgeColor','g','LineWidth',2) ;
end
end