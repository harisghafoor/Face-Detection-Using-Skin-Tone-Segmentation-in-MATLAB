# Face Detection Using Skin Tone Segmentation in MATLAB
## Introduction:
In recent years, face recognition has become a widely used technology that has been successfully integrated into apps. Identification of criminals in public security systems, security verification systems, credit card verification, medicine, file management, video conference, HMI systems, verification of actual holders of driver's licenses or passports, monitoring systems, automatic entry systems, and so on are just some of the applications.
Color correction, face detection, and face normalization are the three subproblems. Each of these sub-problems can be further subdivided, for example, eye detection, mouth detection, feature extraction, and so on.
## Face detection methods:
The Face detection indicates if there is a face in the input image or not. The impact of complex background, particularly the impact of skin-like background and brightness, has a significant impact on face detection using color information.
There exist many different approaches to detect faces. There are two categories for face detection:
    1. Knowledge-based approach
    2. Feature-based approaches 
    3. Model-based approaches
 In our project, we solely discuss knowledge based approach; we don't use the training model; instead, we use knowledge-based approaches.

### Knowledge based vs. Feature-based approach: 
Many researchers combine these two methods to obtain a real human face because color- and feature-based detections can discover humans quickly and reliably. However, in the case of varied lighting conditions, the classic color-based method has difficulty detecting skin colour, and the normal feature-based method has a large calculation complexity. In this project, we suggest a new illumination adjustment system to solve the color-based method's difficulty and make feature-based detection easier. 
This method is based on extracting features from an image and matching them against a database of face features. The three steps of the feature-based approach are as follows:
### Low-level analysis 
The low-level analysis is the segmentation of visual components based on edge detection, grayscale analysis, motion, color information, and other factors. Face detection based on edge detection with noise reduction using and contrast adjustment using histogram equalization. The Sobel operator is then used to create an edge image. Because facial characteristics such as pupils, brows, and lips are darker than the surrounding area, face detection based on grayscale analysis seems promising. Contrast stretching and gray-scale morphological algorithms are used to the input image to improve the quality of dark areas. Moving dark regions such as the face and other elements of the body are retrieved by thresholding cumulative frame differences in face detection based on motion information.
### Feature analysis: 
These methods, such as the Viola-Jones method, Gabor feature method, and Constellation method, are based on structural traits that exist in different poses, light changes, and multiple views that are utilized to locate faces.
### Face vs no face detection:
Following the face localization process, we can see many regions that could represent human faces. Then, for each candidate block, the features of height to width ratio, mouth, and eyes are detected sequentially. Because each of these three detections has the potential to reject candidate blocks, the low computation module is given top priority. The detection of the height to width ratio is quick and easy. If the ratio is between 1.75 and 0.75, there's a chance it's a face.
### Face width and height:
Using the width and height from the already developed databases, we determined an approach the length of pixels for each dimension which fits the face and easily crops the face out of picture. But this algorithm is not reliable and sometimes we don’t get our results accurate. 