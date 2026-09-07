# Lecture 9: Convolution Neural Network

## Smaller Network: ANN

## Need for CNN

According to a MathWork post, a CNN convolves learned features with input data, and uses 2D convolutional layers, making this architecture well suited to processing 2D data, such as images. Since CNNs eliminate the need for manual feature extraction, one doesn't need to select features required to classify the images.

## Convolutional Neural Network

A Convolutional Neural Network, also known as CNN or ConvNet, is a class of neural networks that specializes in processing data that has a grid-like topology, such as an image.

A digital image is a binary representation of visual data. It contains a series of pixels arranged in a grid-like fashion that contains pixel values to denote how bright and what color each pixel should be.

## Convolutional Neural Network

A CNN typically has three layers:

1. A convolutional layer
2. A pooling layer
3. A fully connected layer

The convolution layer is the core building block of the CNN. It carries the main portion of the network's computational load.

## Architecture of a CNN

### Convolution Layer

This layer performs a dot product between two matrices, where one matrix is the set of learnable parameters known as a **kernel**, and the other matrix is the restricted portion of the receptive field (image or part of image).

The kernel is spatially smaller than an image but is more in-depth. This means that, if the image is composed of three (RGB) channels, the kernel height and width will be spatially small, but the depth extends up to all three channels.

### Kernel

- Kernel is nothing but a filter that is used to extract the features from the images.
- The kernel is a matrix that moves over the input data, performs the dot product with the sub-region of input data, and gets the output as the matrix of dot products.
- Kernel moves on the input data by the stride value.
- Output dimension after kernel: **[i – k] + 1**

### Stride

During the forward pass, the kernel slides across the height and width of the image, producing the image representation of that receptive region. This produces a two-dimensional representation of the image known as an **activation map** that gives the response of the kernel at each spatial position of the image.

The sliding size of the kernel is called a **Stride**.

- Output dimension after stride: **[(i – k) / s] + 1**

### Padding

- Padding is the best approach, where the number of pixels needed for the convolutional kernel to process the edge pixels are added onto the outside copying the pixels from the edge of the image.
- Fixes the border effect problem with padding.
- Output dimension after stride: **[(i – k + 2p) / s] + 1**

## Pooling Layer

The pooling layer replaces the output of the network at certain locations by deriving a summary statistic of the nearby outputs.

This helps in reducing the spatial size of the representation, which decreases the required amount of computation and weights.

The pooling operation is processed on every slice of the representation individually.

### Types of Pooling

- **Max Pooling**
- **Average Pooling**

### Max Pooling Operation

## Flattening

Flattening is used to convert all the resultant 2-Dimensional arrays from pooled feature maps into a single long continuous linear vector. The flattened matrix is fed as input to the fully connected layer to classify the image.

## Fully Connected Layer

Neurons in this layer have full connectivity with all neurons in the preceding and succeeding layer as seen in regular FCNN. This is why it can be computed as usual by a matrix multiplication followed by a bias effect.

The FC layer helps to map the representation between the input and the output.

## Illustration of Convolution Operation

## Activation Map

### Consider learning an image:

- Some patterns are much smaller than the whole image (e.g., "beak" detector)
- Can represent a small region with fewer parameters

### Same pattern appears in different places:

- They can be compressed!
- What about training a lot of such "small" detectors and each detector must "move around".
- "upper-left beak" detector, "middle beak" detector — They can be compressed to the same parameters.

## A Convolutional Layer

### A Filter

A CNN is a neural network with some convolutional layers (and some other layers). A convolutional layer has a number of filters that does convolutional operation.

- **Beak detector**

## Convolution Example

```
6 x 6 image:
1 0 0 0 0 1
0 1 0 0 1 0
0 0 1 1 0 0
1 0 0 0 1 0
0 1 0 0 1 0
0 0 1 0 1 0

Filter 1:     Filter 2:
 1 -1 -1       -1  1 -1
-1  1 -1       -1  1 -1
-1 -1  1       -1  1 -1
```

These are the network parameters to be learned. Each filter detects a small pattern (3 x 3).

### Convolution with stride=1

```
6 x 6 image with Filter 1, stride=1
Result: 3 -1
        -3  3

6 x 6 image with Filter 1, stride=2
Result: 3 -3
```

### Convolution Output (stride=1)

```
Filter 1 result:     Filter 2 result:
 3 -1 -3 -1          -1 -1 -1 -1
-3  1  0 -3          -1 -1 -2  1
-3 -3  0  1          -1 -1 -2  1
 3 -2 -2 -1          -1  0 -4  3
```

Repeat this for each filter with stride=1. Two 4 x 4 images forming 2 x 4 x 4 matrix = **Feature Map**

### Color Image: RGB 3 Channels

For a color image, each channel (R, G, B) is a 6x6 matrix, and filters also extend across all 3 channels depth-wise.

**Convolution vs. Fully Connected**

## The Whole CNN

```
Input → Convolution → Max Pooling → Convolution → Max Pooling → Flattened → Fully Connected Feedforward Network → Output (cat, dog, ...)
```

Can repeat many times.

## Why Pooling

Subsampling pixels will not change the object.

```
bird → (subsampling) → bird
```

We can subsample the pixels to make image smaller → fewer parameters to characterize the image.

## A CNN compresses a fully connected network in two ways:

1. Reducing number of connections
2. Shared weights on the edges

Max pooling further reduces the complexity.

## Flattening

```
Feature Maps:
30  13
-11  3

Flattened: [30, 13, -11, 3, 0, 3, 0, 1, 3, -1, 1, 0, 3, ...]
```

Then fed into Fully Connected Feedforward network.

## CNN in Keras

Only modified the network structure and input format (vector → 3-D tensor).

```
Layer                   Output Shape
Input                   1 x 28 x 28
Convolution             25 x 26 x 26
Max Pooling             25 x 13 x 13
Convolution             50 x 11 x 11
Max Pooling             50 x 5 x 5
Flattened               1250
Fully Connected Network → Output
```

- Input_shape = (28, 28, 1)  where 1 = black/white, 3 = RGB
- How many parameters for each filter? **9**
- How many parameters for each filter after first convolution? **225 = 25 x 9**

## Back Propagation