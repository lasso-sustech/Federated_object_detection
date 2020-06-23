# Federated-Benchmark: A Benchmark of Real-world Images Dataset for Federated Learning

### Overview
We present a real-world image dataset, reflecting the characteristic real-world federated learning scenarios, and provide an extensive benchmark on model performance, efficiency, and communication in a federated learning setting.

### Get Start
* Please firstly ensure you have **CUDA 10.2** installed.
* Run `make` to install dependencies, build cython files, and generate task join files.
* For training, simply run `make run` to start and `make stop` to stop the training process.
    * during training, use `make watch` to see if the training is going on.
    * use `make run NUM=5` to take 5 clients in training.

### Resources
* Dataset: [dataset.fedai.org](https://dataset.fedai.org)
* Paper: ["Real-World Image Datasets for Federated Learning"](https://arxiv.org/abs/1910.11089)

### Street_Dataset
We implemented two mainstream object detection algorithms (YOLOv3 and Faster R-CNN). Code for YOLOv3 is borrowed from  [PyTorch-YOLOv3](https://github.com/eriklindernoren/PyTorch-YOLOv3.git) and Faster R-CNN from [simple-faster-rcnn-pytorch](https://github.com/chenyuntc/simple-faster-rcnn-pytorch.git).
* Overview: Image Dataset
* Details: 7 different classes, 956 images with pixels of 704 by 576, 5 or 20 devices
* Task: Object detection for federated learning
* [Dataset_description.md](https://github.com/FederatedAI/FATE/blob/master/research/federated_object_detection_benchmark/README.md)

### Citation
* If you use this code or dataset for your research, please kindly cite our paper:
```bash
@article{luo2019real,
  title={Real-World Image Datasets for Federated Learning},
  author={Luo, Jiahuan and Wu, Xueyang and Luo, Yun and Huang, Anbu and Huang, Yunfeng and Liu, Yang and Yang, Qiang},
  journal={arXiv preprint arXiv:1910.11089},
  year={2019}
}
```