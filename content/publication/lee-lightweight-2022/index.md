---
title: Lightweight Neural Architecture Search with Parameter Remapping and Knowledge
  Distillation
authors:
- Hayeon Lee
- Sohyun An
- Minseon Kim
- Sung Ju Hwang
date: '2022-05-01'
publishDate: '2024-02-27T13:06:13.794546Z'
publication_types:
- paper-conference
abstract: Designing diverse neural architectures taking into account resource constraints
  or datasets is one of the main challenges in Neural Architecture Search (NAS). However,
  existing sample-based or one-shot NAS approaches require excessive time or computational
  cost to be used in multiple practical scenarios. Recently, to alleviate such issues,
  zero-cost NAS methods that are efficient proxies have been proposed, yet their performance
  is rather poor due to the strong assumption that they predict the final performance
  of a given architecture with random initialization. In this work, we propose a novel
  NAS based on block-wise parameter remapping (PR) and knowledge distillation (KD),
  which shows high predictive performance while being fast and lightweight enough
  to be used iteratively to support multiple real-world scenarios. PR significantly
  shortens training steps and accordingly we can reduce the required time/data for
  KD to work as an accurate proxy to just few batches, which is largely practical
  in real-world. In the experiments, we validate the proposed method for its accuracy
  estimation performance on CIFAR-10 from the MobileNetV3 search space. It outperforms
  all relevant baselines in terms of performance estimation with only 20 batches.
links:
- name: URL
  url: https://openreview.net/forum?id=3D2Qz9y001S
---
