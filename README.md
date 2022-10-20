# RKNN-SuperSampling

RK3399Pro 에서 NPU를 사용하고 최적화 하기 위한 프로젝트.


## 필요 푸로그람

> 1. wget<br>
> 2. tar<br>
> 3. git<br>
> 4. Docker<br>
> 5. 네트워크 가능한 환경<br>

## MacOS / Ubuntu 기준 빌드 방법

```sh
# 아직 미 지원기능, 누가 윈도우 씀 ㅎ?
$ git clone https://github.com/AnabolicWarriors/RKNN-SuperSampling
$ cd RKNN-SuperSampling
$ chmod +x ./bootstrap.sh
$ chmod +x ./build.sh
$ ./bootstrap.sh
$ ./build.sh
```

## 실행 방법

> 1. 위의 명령어를 수행 합니다.
> 2. bin 경로에 있는, 파일을 압축하여 보드에 옮깁니다.
> 3. run-board.sh 명령어를 수행합니다.
> 4. 결과를 확인 합니다.
