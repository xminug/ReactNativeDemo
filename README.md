# ReactNativeDemo

## 介绍

本项目基于ReactNative，期望抽出一个具有通用能力的ViewController，能够承载RN项目。


## 安装node依赖
	npm install
	
## 安装iOS工程依赖
	cd ReactNativeDemo-iOS && pod install
	
## 运行iOS项目
	进入ReactNativeDemo-iOS 项目，打开xcworkspace 文件，即是一个标准可直接执行的iOS工程，点击运行即可。
	
## 启动RN项目
	npm start // 启动一个webServer
	
## 请求编译后的RN文件

    http://localhost:8081/index.bundle?platform=ios&dev=true&minify=false

注意链接后的platform参数，RN项目中，存在根据iOS或者Android平台不同而特殊处理的代码，所以需要传入参数 platform 来确定返回的文件是根据哪个平台进行编译的。