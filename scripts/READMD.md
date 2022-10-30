# 파일 변환 방법 가이드라인

1. Tensorflow의 PB와 H5 파일을 TFLite로 변환을 수행합니다.<br>
> python3 tf2lite.py -m 'model.h5' -o 'model.tflite'<br>
2. TFLite를 RKNN으로 변환 합니다.<br>
> python3 tflite2rknn.py -m 'model.tflite' -o 'model.rknn'<br>

일부 모델 Resnet50, YOLO와 같은 모델은 tflite로 변환에 오류가 있습니다. 그래서 PC에서 tflite로 변환 후 RKNN로 변환 하는 과정이 필요합니다. 그러나 PyTorch의 ONNX, Caffe의 caffemodel, Darknet의 weight, cfg는 변환에 실패하면서 오직 tflite가 정상적으로 rknn으로 변환이 되었습니다. 그래서 onnx를 tflite로 변환 후, rknn으로 변환하는 3번의 변환 과정이 필요합니다.

만약 추가적인 onnx2tf 코드나 변환 알고리즘을 작성하였다면, 커밋 및 라이브러리 갱신 해주시길 바랍니다.

아래의 모델은 정상적으로 변환한 라이브러리 입니다. 갱신이 되거나, 추가적인 실험이 완료되었다면 수정 및 추가해주세요.

라이브러리명|Intel 성능|RKNN 성능
:---:|:---:|:---:
[Fast-SRGAN](https://github.com/HasnainRaz/Fast-SRGAN)|[평균 150ms](/scripts/img/intel-fast-srgan.png)|[평균 80ms](/scripts/img/npu-fast-srgan.png)
[MobileNet](https://github.com/rockchip-linux/rknn-toolkit2/tree/master/examples/tflite/mobilenet_v1)|*|[평균 9ms](/scripts/img/npu-mobilenet-v1.png)

