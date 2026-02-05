# UltraHiT: A Hierarchical Transformer Architecture for Generalizable Internal Carotid Artery Robotic Ultrasonography

[![ICRA 2026](https://img.shields.io/badge/Accepted%20to-ICRA%202026-red)](https://ieee-ras.org/conferences-workshops/future-of-icra)

**UltraHiT** is a Hierarchical Transformer-based decision architecture for autonomous robotic ultrasonography of the Internal Carotid Artery (ICA). This work addresses the challenging task of ICA scanning, which has been largely overlooked in previous research due to its deep location, tortuous course, and significant individual variations.

## 📄 Paper

- **Paper (PDF)**: [arXiv:2509.13832](https://arxiv.org/pdf/2509.13832)
- **arXiv**: [https://arxiv.org/abs/2509.13832](https://arxiv.org/abs/2509.13832)
- **Status**: Accepted to ICRA 2026

## 👥 Authors

**Teng Wang**<sup>1,*</sup>, **Haojun Jiang**<sup>1,*,§</sup>, **Yuxuan Wang**<sup>2,*</sup>, Zhenguo Sun<sup>3</sup>, Xiangjie Yan<sup>1</sup>, Xiang Li<sup>1</sup>, **Gao Huang**<sup>1,†</sup>

<sup>1</sup> Department of Automation, BNRist, Tsinghua University, Beijing, China  
<sup>2</sup> School of Computer Science and Technology, Xidian University, Xian, China  
<sup>3</sup> Beijing Academy of Artificial Intelligence, Beijing, China

<sup>*</sup> These authors contributed equally to this work.  
<sup>§</sup> Haojun Jiang guided this work.  
<sup>†</sup> Corresponding author: Gao Huang. Email: gaohuang@tsinghua.edu.cn

## 🎯 Abstract

Carotid ultrasound is crucial for the assessment of cerebrovascular health, particularly the internal carotid artery (ICA). While previous research has explored automating carotid ultrasound, none has tackled the challenging ICA. This is primarily due to its deep location, tortuous course, and significant individual variations, which greatly increase scanning complexity.

To address this, we propose a Hierarchical Transformer-based decision architecture, namely UltraHiT, that integrates high-level variation assessment with low-level action decision. Our motivation stems from conceptualizing individual vascular structures as morphological variations derived from a standard vascular model. The high-level module identifies variation and switches between two low-level modules: an adaptive corrector for variations, or a standard executor for normal cases. Specifically, both the high-level module and the adaptive corrector are implemented as causal transformers that generate predictions based on the historical scanning sequence.

To ensure generalizability, we collected the first large-scale ICA scanning dataset comprising 164 trajectories and 72K samples from 28 subjects of both genders. Based on the above innovations, our approach achieves a **95% success rate** in locating the ICA on unseen individuals, outperforming baselines and demonstrating its effectiveness.

## 🎥 Demo Video

See the [project website](https://ultrahit-thu.github.io/UltraHiT/) for the full demo video.

## 🏗️ Architecture

UltraHiT employs a hierarchical architecture that:
- **High-level Module**: Identifies vascular variations and determines whether adaptive adjustment is needed
- **Standard Executor**: Handles normal cases based on anatomical knowledge from the standard ICA vascular model
- **Adaptive Corrector**: Captures individual variations through imitation learning on large-scale data

Both the high-level module and adaptive corrector are implemented as causal transformers that leverage historical scanning sequences for more informed decision-making.

## 📊 Results

- **95% success rate** in locating the ICA on unseen individuals
- First large-scale ICA scanning dataset: **164 trajectories and 72K samples** from 28 subjects
- Outperforms baseline methods in handling anatomical variations

## 📦 Code

Code will be released after acceptance. Stay tuned!

## 📝 Citation

If you find this work useful in your research, please cite:

```bibtex
@misc{wang2025ultrahithierarchicaltransformerarchitecture,
      title={UltraHiT: A Hierarchical Transformer Architecture for Generalizable Internal Carotid Artery Robotic Ultrasonography}, 
      author={Teng Wang and Haojun Jiang and Yuxuan Wang and Zhenguo Sun and Xiangjie Yan and Xiang Li and Gao Huang},
      year={2025},
      eprint={2509.13832},
      archivePrefix={arXiv},
      primaryClass={cs.RO},
      url={https://arxiv.org/abs/2509.13832}, 
}
```

## 🌐 Project Website

Visit our project website: [https://ultrahit-thu.github.io/UltraHiT/](https://ultrahit-thu.github.io/UltraHiT/)

## 📄 License

This website is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).

## 🙏 Acknowledgments

This website borrows the source code of [this website](https://nerfies.github.io/). We sincerely thank [Keunhong Park](https://keunhong.com/) for developing and open-sourcing this template.

## 📧 Contact

For questions or inquiries, please contact:
- **Gao Huang** (Corresponding author): gaohuang@tsinghua.edu.cn

---

**Note**: This work is supported by Ministry of Industry and Information Technology of the People's Republic of China (2024YFB4708200).
