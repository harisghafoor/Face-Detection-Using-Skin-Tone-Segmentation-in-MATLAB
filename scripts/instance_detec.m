function [CurBB,foundFaces,num_faces,bboxes]=instance_detec(bwi)
% Input: Foreground Pixels
% Output: Rectangle pixels for each face, number of faces found, bounding boxes for each foreground object
labeld = bwlabel(bwi,4); % labeling the binary image using 4-connectivity
BB  = regionprops(labeld, 'BoundingBox');
bboxes= cat(1, BB.BoundingBox); % bounding box
widths=bboxes(:,3);
heights=bboxes(:,4);
hByW=heights./widths; % New Feature for face detection
lenRegions=size(bboxes,1); % Total number of Faces
foundFaces=zeros(1,lenRegions);
num_faces=0;
probable_faces=label2rgb(labeld);
figure,imshow(probable_faces);
title('face candidates');
for i=1:lenRegions
    % height to width ratio, computed above.
    if (hByW(i)>1.75 || hByW(i)<0.75)
        % this cannot be a mouth region. discard
        continue;
    end
    % Impose a min face dimension constraint
    if (heights(i)<30 && widths(i)<25)
        continue;
    end
    % get current region's bounding box
    CurBB=bboxes(i,:);
    foundFaces(i)=1;
    num_faces=num_faces+1;
    
end
end