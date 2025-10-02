# Legged Localization Benchmark

## 项目简介
用于足式机器人定位方法测试的repo

## 特性
<div align="center" style="margin: 20px 0;">
  <img src="assets/images/go1l2.png"
       alt="go1l2 model" 
       title="go1l2 model"
       width="800" 
       style="max-width: 100%; height: auto; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.15);"
       loading="lazy"/>
</div>
<div align="center" style="margin: 20px 0;">
  <img src="assets/images/fastlio.png" 
       alt="fastlio" 
       title="fastlio"
       width="800" 
       style="max-width: 100%; height: auto; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.15);"
       loading="lazy"/>
</div>

- 列出主要特性
- 支持的算法/平台
- 可扩展性等

## 安装

```bash
sudo apt install libgoogle-glog-dev
# 克隆仓库
git clone git@github.com:Tipriest/legged_localization_benchmark.git
cd legged_localization_benchmark
git submodule update --init --recursive
```


## 编译

```bash
# for fast_lio
# install livox_sdk
cd ~/Downloads
git clone git@github.com:Tipriest/Livox-SDK.git
cd Livox-SDK
cd build && cmake ..
make
sudo make install

# go back to legged_localization_benchmark ws
catkin build
```

## 使用方法

```bash
./scripts/sim.launch
# 按住手柄的A键起立，X键进入运动模式，然后左旋杆控制移动，右旋杆控制yaw角度
# 使用手柄控制
# 使用键盘控制
# 需要改一下代码，有待完善文档
# 按下手柄的X起立，按下Y切换trot步态，左推杆控制XY移动，右推杆控制Yaw
```

<!-- 详细用法请参考 [文档](docs/) 或代码注释。 -->

## 目录结构

```
legged_localization_benchmark/
├── assets
├── Awesome-Legged-Robot-Localization-and-Mapping
├── build
├── devel
├── logs
├── README.md
├── scripts
└── src
```

## 一些想做的点
1. 有一个全局地图之后，怎么样使用localization的方法对于随机出生点可以获得自己的位置
2. 对于机器人小跳向前的这种冲击情况进行考虑
3. 光照突然变化
4. 机器人进入电梯
5. 有一个较大的IMU冲击



## 贡献指南

欢迎提交 issue 和 pull request！请先阅读 [贡献指南](CONTRIBUTING.md)。

## 许可证

本项目采用 MIT 许可证，详见 [LICENSE](LICENSE)。

## 联系方式

如有问题或建议，请联系：a1503741059@163.com

