# Additional Packages

## MATLAB

- MATLAB
- Audio Toolbox
- Curve Fitting Toolbox
- Deep Learning Tooalbox
- DSP System Toolbox
- Signal Processing Toolbox
- Statistics and Machine Learning Toolbox
- Symbolic Math Toolbox

## Nvidia graphic card related

- driver
- CUDA
- CUDNN
- tensorflow

### Included graphic card version
- gtx1070 (Nvidia-410, CUDA 9.0, tensorflow==1.12.0)


### check tensorflow status

```python
import tensorflow as tf
sess = tf.Session(config=tf.ConfigProto(log_device_placement=True)
```
