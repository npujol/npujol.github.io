______________________________________________________________________

id: ai-engineer-introduction-inference
aliases: [ ]
tags:
\- roadmap
\- ai-engineer
\- ai-engineer-introduction
\- ready
\- --

```
# ai-engineer-introduction-inference

## Contents

__Roadmap info from [ roadmap website ] (https://roadmap.sh/ai-engineer/inference@KWjD4xEPhOOYS51dvRLd2) __

  ## Inference

  In
  artificial
  intelligence
  (AI), inference refers to the process where a trained machine learning model makes predictions or draws conclusions from new, unseen data. Unlike training, inference involves the model applying what it has learned to make decisions without needing examples of the exact result. In essence, inference is the AI model actively functioning. For example, a self-driving car recognizing a stop sign on a road it has never encountered before demonstrates inference. The model identifies the stop sign in a new setting, using its learned knowledge to make a decision in real-time.
```

Learn more from the following resources:

- [@article@Inference vs Training](https://www.cloudflare.com/learning/ai/inference-vs-training/)
- [@article@What is Machine Learning Inference?](https://hazelcast.com/glossary/machine-learning-inference/)
- [@article@What is Machine Learning Inference? An Introduction to Inference Approaches](https://www.datacamp.com/blog/what-is-machine-learning-inference)

### __1. Definition & Purpose__

| __Aspect__ | __Training__ | __Inference__ |
| ---------- | ---------------------------------------------------------------------------------------- | --------------------------------------------------------------- |
| __Goal__ | Teach a model to recognize patterns by adjusting weights/parameters using labeled data . | Use the trained model to make predictions on new, unseen data . |
| __Stage__ | Development phase (offline). | Deployment phase (real-time or batch) . |

### __2. Key Differences__

| __Feature__ | __Training__ | __Inference__ |
| ----------------- | ----------------------------------------------------------------- | ------------------------------------------------- |
| __Data Used__ | Large, labeled datasets (e.g., millions of images) . | New, unlabeled data (single or batch inputs) . |
| __Compute Needs__ | High (GPUs/TPUs, days/weeks of processing) . | Lower (can run on CPUs/edge devices) . |
| __Process Steps__ | Forward pass, loss calculation, backpropagation, weight updates . | Forward pass only (no learning) . |
| __Output__ | Trained model (weights/architecture) . | Predictions (e.g., class labels, probabilities) . |

### __3. Performance Metrics__

| __Metric__ | __Training__ | __Inference__ |
| ---------- | ------------------------- | ------------------------------------------- |
| __Focus__ | Accuracy, loss reduction. | Latency, throughput, real-time efficiency . |
| __Time__ | Hours to weeks. | Milliseconds to seconds . |

### __4. Use Cases__

| __Training__ | __Inference__ |
| ------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------- |
| - Image recognition models (e.g., ResNet). <br>- LLMs like GPT-4 . | - Real-time object detection (e.g., self-driving cars). <br>- Chatbots (e.g., ChatGPT responses) . |

### __5. Challenges__

| __Training__ | __Inference__ |
| ------------------------------------------------------------------ | ------------------------------------------------------------------------ |
| - Requires massive labeled data. <br>- Computationally expensive . | - Optimizing for low latency. <br>- Handling model drift in production . |

### __Visual Summary__

__Graph__: *Compute Resources vs. Phase*

```bash
High | Training (Peak Resources)
|
Mid  |-------------------------------
|
Low  | Inference (Minimal Resources)
```

__Key Takeaway__:

- Training is like __going to school__ (learning from textbooks), while inference is like __taking an exam__ (applying knowledge) .
