function s=segmentation(C,lower_thresh,higher_thresh)
%  input: Input RGB Image,
%         lower_thresh,higher_thresh: setting of chromatic intesity
%         paramter for objects
%  Output: Segmented image
H=size(C,1); % height 
W=size(C,2); % width
YCbCr=rgb2ycbcr(C); % RGB to YCbCr
Cr=YCbCr(:,:,3);
s=zeros(H,W);
[SkinIndexRow,SkinIndexCol] =find(lower_thresh<Cr & Cr<higher_thresh); % finding the co-ordinates of foreground
for i=1:length(SkinIndexRow)
    s(SkinIndexRow(i),SkinIndexCol(i))=1;
end
figure,imshow(s);
title('Segmented Image');
end