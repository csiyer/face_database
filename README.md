# Face Database
This repository contains a novel stimulus set of 156 diverse faces modeled in Blender using [Keentools' Facebuilder for Blender](https://keentools.io/products/facebuilder-for-blender). Original face images come from the [MUCT Face Database](https://github.com/StephenMilborrow/muct). 

Faces were then modeled into textured 3D Blender objects (contained within the _blender_faces_ directory).

These 3D objects were then subjected to random point lighting in Blender and systematically rendered into images from 15 different viewpoints (all combinations of: +-50˚, +-25˚, and 0˚ right/left; +-30˚ and 0˚ up/down). These images were grayscaled and luminance-matched (contrast + intensity, _not_ histogram matching)--the results are in the _version1_grayscale_lm_ directory.

These faces were used in ["Towards a Multiple Systems Account of Race-Related Biases in Memory"](https://github.com/csiyer/memory_bias_thesis), an undergraduate honors thesis submitted to the Stanford University Symbolic Systems Program, and as a poster to the Cognitive Neuroscience Society in March 2023.

This directory contains the _blender_faces_ with the 3D face models, the _version1_grayscale_lm_ with 15 images per face comprising the stimuli used in the thesis above. It also contains estimates of model-based memorability for all the faces, metadata containing data from our race/gender-classification task for all the faces, and notes containing details about the stimulus construction process (e.g., which faces from the MUCT dataset were excluded and why).

NOTE: not all faces imaged in this dataset are specified for public use in publications. The _ids_for_publication.txt_ file specifies the IDs of imaged people who have specifically consented for inclusion in publications.

Questions about this dataset can be directed to csiyer@stanford.edu.