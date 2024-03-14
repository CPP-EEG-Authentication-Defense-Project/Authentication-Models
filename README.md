# Authentication Baseline

This repository contains a series of experimental authentication models based on EEG data. These models have three
categories:
1. Plain classifiers: "standard" learning-based models used for authentication.
2. Encrypted classifiers: learning-based models which use homomorphic encryption, based on [concrete-ml](https://github.com/zama-ai/concrete-ml).
3. Hash based: models that use hashing, rather than learning, to authenticate data samples.

## References

The models tested in this repository leverages several sources to inspire the designs used, which include:

- Dataset: https://doi.org/10.13026/ps31-fc50
- Random Forest model approach: https://doi.org/10.1109/JIOT.2020.3044726
- Support Vector Machine approach: https://doi.org/10.1109/NER.2011.5910581
- XGBoost model approach:
  - https://doi.org/10.1515/cdbme-2023-1173
  - http://hdl.handle.net/20.500.12680/m900p256z
- Biohash approach: https://doi.org/10.1016/j.patrec.2004.11.021
- Fuzzy hash approach:
  - https://doi.org/10.1016/j.diin.2006.06.015
  - https://doi.org/10.1109/TIFS.2019.2904844
