<div align="center">

  <h3><strong>Flutter App</strong></h3>
  <div style="margin-top:10px;"><a href="Dart:;"><img src="https://img.shields.io/badge/language-Dart-brightgreen.svg" /></a>
  <a href="https://opensource.org/licenses/mit-license.php"><img src="https://img.shields.io/badge/license-MIT-blue.svg" /></a></div>

  <h1></h1>
</div>

Support [√] Flutter (Channel stable, v2.5.2).Dart SDK version: 2.14.4（stable）

## 注意

1.本项目运行在 GETX，创建路由建议用以下命令:

```
get create page:xx
```

<br />
2.首页地图需要Goole service（科学上网）

<br />

## 启动

```
flutter run
```

## 目录结构

```
app
    ├─colors
    ├─common
    │  ├─langs
    │  ├─methods
    │  └─widgets
    ├─entities
    ├─middlewares
    ├─modules(按路由划分模块)
    │  └─home
    │      ├─apis
    │      ├─bindings
    │      ├─controllers
    │      ├─mixins
    │      └─views
    │          └─widgets
    ├─routes
    ├─store
    ├─utils
    │  ├─extensions
    │  └─http
    └─values
```

## 设置权限（项目中已配置）

#### 谷歌地图

##### 安卓：android-app-src-main-AndroidManifest.xml

```
<meta-data
  android:name="com.google.android.geo.API_KEY"
  android:value="这里填写自己的谷歌地图key"/>
```

##### IOS：ios-Runner-AppDelegate.swift

```
import GoogleMaps
GMSServices.provideAPIKey("这里填写自己的谷歌地图key")
```

#### 定位

##### 安卓：android-app-src-main-AndroidManifest.xml

```
  <uses-permission android:name="android.permission.FOREGROUND_SERVICE" />
  <uses-permission android:name="android.permission.ACCESS_BACKGROUND_LOCATION"/>
```

##### IOS：ios-Runner-info.plist

```
  <key>NSLocationWhenInUseUsageDescription</key>
	<string>需要定位权限</string>
```

#### 相机

##### 安卓：android-app-src-main-AndroidManifest.xml

```
  <uses-permission android:name="android.permission.CAMERA" />
```

##### IOS：ios-Runner-info.plist

```
  <key>NSCameraUsageDescription</key>
	<string>This app requires access to the camera.</string>
```
## 工具链

#### GETX
https://github.com/jonataslaw/get_cli<br />
GetX™ 框架的官方 CLI<br />

##### 新建项目
```shell
  get create project
```
用来新建一个项目, 你可以在 Flutter 和 get_server里选一个, 创建默认目录之后, 它会运行一个 get init

##### 初始化
```shell
  get init
```
这条命令慎用，它会覆盖 lib 文件夹下所有内容。 它允许你在两种结构中二选一, getx_pattern 和 clean.

##### 创建 Page
```shell
  get create page:name
```

#### Dart Data Class Generator
vscode插件<br />
Create dart data classes easily, fast and without writing boilerplate or running code generation.