# HOOF (Histogram of Optical Flow)
In this repository, we will learn different types of histograms of optical flow for handcrafted feature extraction from video.
These methods are discussed in [CVPR2015 paper](https://www.cv-foundation.org/openaccess/content_cvpr_2015/html/Ryoo_Pooled_Motion_Features_2015_CVPR_paper.html) (Pooled Motion Features for First-Person Videos).<br/>
We have two main approaches for feature extraction from images or videos for machine learning tasks.<br/>
1. One of them is Handcrafted features that we use different methods like SIFT, SURF, etc. to obtain useful features. 
2. And the other is deep learning based approaches that we use the output of deep neural networks layers as our features.<br/>

For some tasks like action recognition, motion information is so essential. Using optical flows for motion tracking is a common method.

For better representation, we can use different types of Histograms. The usual approaches, considering directions of optical flows and the magnitude of them.

For example, we can consider four intervals of directions like (0-90,90-180,180-270,270-360). Then we consider an array by the size of four. First index for optical flows between 0-90 and the second index for optical flow between 90-180 and son on. So we count the number of optical flows in each direction and increase the number of associated cell in the mentioned array.

Also, we can add magnitude to our array. For example, we consider four intervals of magnitudes like (0-0.5,0.5-1,1-1.5,1.5-2). Then we assume a zero array of size 16. 4 kinds of direction and 4 kinds of magnitudes, so the overall size of array should be 16. Then we counter the magnitudes and directions of optical flows and increase the associated array cell's number.


