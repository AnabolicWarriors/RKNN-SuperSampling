import numpy as np
import argparse
import tensorflow as tf

# 메모리 성능이 부족하여, PC에서 변환 후 넣어주셍 ><

if __name__ == '__main__':
    parser = argparse.ArgumentParser('tensorflow to tflite')
    parser.add_argument('-m', dest='modelFile', type=str, required=True, help='텐서플로우 모델 파일 이름')
    parser.add_argument('-o', dest='outputFile', type=str, required=True, help='TFLite 출력할 파일 명')
    args = parser.parse_args()
    
    # model = tf.keras.applications.resnet50.ResNet50(
    #     include_top=True,
    #     weights='imagenet',
    #     input_tensor=None,
    #     input_shape=None,
    #     pooling=None,
    #     classes=1000,
    # )
    
    model = tf.keras.models.load_model()
    model.summary()
    
    converter = tf.lite.TFLiteConverter.from_keras_model(args.modelFile)
    tflite_model = converter.convert()
    # Save the model.
    with open(args.outputFile, 'wb') as f:
        f.write(tflite_model)
    
    print('done')
