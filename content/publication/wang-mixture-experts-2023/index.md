---
title: "One Prompt is not Enough: Automated Construction of a Mixture-of-Expert Prompts"
authors:
- Ruochen Wang*
- Sohyun An*
- Minhao Cheng
- Tianyi Zhou
- Sung Ju Hwang
- Cho-Jui Hsieh
date: '2024-02-01'
publishDate: '2024-02-27T13:06:13.827525Z'
publication_types:
- manuscript
publication: '*Under Review*'
abstract: 'Large Language Models (LLMs) exhibit strong generalization power in adapting
  to novel tasks when prompted with language instructions and in-context demos. Since
  this ability sensitively depends on the quality of prompts, various methods have
  been explored to automate the instruction design process. While these methods demonstrated
  promising results, they also restricted the output space of the search problem to
  a demo-free instruction. Such simplification significantly limits their performance,
  as a single demo-free instruction might not be able to cover the entire problem
  space of the targeted task due to its complexity. To alleviate this issue, we adopt
  the Mixture-of-Expert paradigm to divide the problem space into homogeneous regions,
  each governed by a specialized expert. To further improve the coverage of each expert,
  we expand their prompts to contain both an instruction and several demos. A two-phase
  process is developed to construct the specialized expert for each region: (1) demo
  assignment: Inspired by the theoretical connection between in-context learning and
  kernel regression, we group demos into clusters based on their semantic similarity
  and assign a cluster to each expert; (2) instruction assignment: A region-based
  joint search is applied to optimize an instruction complementary to the demo cluster
  for each expert, yielding a synergistic effect. The resulting method, codenamed
  Mixture-of-Prompts (MoP), outperforms prior art by up to 43% on benchmark NLP tasks.'
tags:
- Large Language Models
- Prompt Optimization
- Multiple-of-Experts
links:
- name: PDF
  url: https://openreview.net/forum?id=sDmjlpphdB
---
