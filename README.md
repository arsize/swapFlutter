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
3.接口数据为测试服mock，不会长期维护
<br />

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

### 已完成功能
- [x] 基于GetX的路由系统，依赖、状态管理
- [x] 基于 dio4.0网络请求封装
- [x] 自定义 Dialog/Toast
- [x] token添加，失效自动刷新
- [x] 登录/注册/获取验证码/退出登录
- [x] 修改昵称/收货地址
- [x] 个人中心
- [x] 客服中心/常见问题/拨打电话
- [x] 套餐卡券购买
- [x] 公告消息列表页面
- [x] 钱包余额
- [x] GoogleMap、market渲染
- [x] 获取用户实时定位
- [x] 商城页面/货物列表/上拉卡片/轮播
- [x] 扫码页面/扫描动画
- [x] 手动输入6位ID
- [x] 局部浮动弹窗

### 后续计划
- [ ] 国际化翻译
- [ ] 修改手机号
- [ ] 更换用户头像
- [ ] 扫码逻辑
- [ ] ApplePay支付对接
- [ ] 商城订单管理
- [ ] GoogleMap地图运动轨迹

### 回馈和建议

如果你有更好的想法或者你想参与到这个项目中来，欢迎提交 PR!!

### 预览

部分页面效果如下：

| ![](./screenshot/01.png)  | ![](./screenshot/02.png)  | ![](./screenshot/03.png)  | ![](./screenshot/04.png)  |
| :---------------------------------: | :---------------------------------: | :---------------------------------: | :---------------------------------: |
| ![](./screenshot/05.png)  | ![](./screenshot/06.png)  | ![](./screenshot/07.png)  | ![](./screenshot/08.png)  |
| ![](./screenshot/09.png)  | ![](./screenshot/10.png) | ![](./screenshot/11.png) | ![](./screenshot/12.png) |
| ![](./screenshot/13.png) | ![](./screenshot/14.png) | ![](./screenshot/15.png) | ![](./screenshot/16.png) |
| ![](./screenshot/17.png) | ![](./screenshot/18.png) | ![](./screenshot/19.png) | ![](./screenshot/20.png) |
| ![](./screenshot/21.jpg) | ![](./screenshot/22.jpg) | ![](./screenshot/23.jpg) |
