# Cat-Distinguish

In this project, i was performing a logistic regression or simple neural network to create a machine learning model for detecting a cat on image.
The train data is 64 x 64 x 3 size (64 pixel and 3 color channel).
The label for training model is on the csv file that sorted by the image name and 0 or 1 is a non cat and cat picture respectively.

First we display sample image from the folder and called it's label to make sure the picture are well labeled.

There are 6 main functions on the repo:
1. file2vec       : converting image to vector with unique number inside
2. sigmoid        : sigmoid function for performing neural network
3. init_with_zero : inisiate all parameter value from 0
4. prop           : counting cost function and gradient
5. optimize       : to optimize the parameters
6. Predict        : predicting the output generated from trained model

After that all functions are assembled into one functions to perform image prediction wether there is a cat or not.

Another things to inform that you could use any random image size to predict if there is a cat in the picture at the test part.
