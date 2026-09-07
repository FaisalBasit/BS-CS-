# Transfer Learning

## Challenges in Deep Learning

1. **Data Hungry** - Deep learning models require large amounts of data.
2. **Lots of time required** - Training deep learning models is computationally expensive and time-consuming.

## What is Transfer Learning?

Transfer learning is one of the most important design techniques of deep learning that works with images or objects recognition.

During the process of transfer learning, we need to decide:

1. **Which part of the knowledge can be transferred** from the source to the target models in order to improve the performance of the target task?
   - For this we try to identify what is common between the source and target model.

2. **Aim of transfer learning** is to improve target task performance results and not to degrade them. To achieve this, we need to be careful about where to transfer the knowledge and when not to.

## Feature Hierarchy in Transfer Learning

Transfer learning leverages the hierarchical nature of features learned by deep networks:

- **General features** like: Edges, textures, lines, shapes, colours
- **High Level features** like:
  - Object parts: Eyes, nose, wings, etc.
  - Pattern: like stripes on a zebra
  - Scenes: Contextual information such as beach, city or forest
  - Objects: Specific objects like cars, trees or building

### ImageNet Dataset

Reference: https://gist.github.com/yrevar/942d3a0ac09ec9e5eb3a

## Ways of Doing Transfer Learning

1. **Feature Extraction**
2. **Fine Tuning**

### Feature Extraction

In feature extraction, the pre-trained model is used as a fixed feature extractor. The learned features from the source task are used as input to a new classifier trained on the target task. The pre-trained layers are frozen (their weights are not updated during training).

### Fine Tuning

In fine tuning, the pre-trained model's weights are used as a starting point, and then the entire model (or parts of it) is further trained on the target task with a lower learning rate. This allows the model to adapt its features to the new task.

## Summary

Transfer learning enables leveraging knowledge from pre-trained models to solve new tasks with less data and training time, making it a crucial technique in deep learning, especially for computer vision tasks.

## Reference Article

https://lisaong.github.io/mldds-courseware/03_TextImage/transfer-learning.slides.html