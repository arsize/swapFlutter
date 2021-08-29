/*
 * @Author: Arsize 
 * @Date: 2021-08-25 11:20:59 
 * @Describe: 设置
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/widgets/common/common_wigets.dart';
import 'package:swapapp/widgets/common/dialog.dart';

class MySetting extends StatefulWidget {
  const MySetting({Key? key}) : super(key: key);

  @override
  _MySettingState createState() => _MySettingState();
}

class _MySettingState extends State<MySetting> {
  var _imgPath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: defaultAppBar(context, title: "设置"),
      body: Container(
        child: Column(
          children: [
            _baseInfoPanel(),
            Container(
              color: Colours.app_bg_grey,
              height: 1,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.all(Adapt.width(30)),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("change_mobile");
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "修改手机号",
                        style: TextStyle(fontSize: Adapt.font(28)),
                      ),
                      Row(
                        children: [
                          Text(
                            "130000000",
                            style: TextStyle(
                              color: Colours.app_font_grey6,
                              fontSize: Adapt.font(28),
                            ),
                          ),
                          SizedBox(
                            width: Adapt.width(21),
                          ),
                          Image(
                            width: Adapt.width(32),
                            height: Adapt.width(32),
                            image: AssetImage("images/line_rightrow.png"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colours.app_bg_grey,
              height: 1,
              width: double.infinity,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("change_nickname");
              },
              child: Padding(
                padding: EdgeInsets.all(Adapt.width(30)),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "修改昵称",
                        style: TextStyle(fontSize: Adapt.font(28)),
                      ),
                      Row(
                        children: [
                          Text(
                            "陈龙",
                            style: TextStyle(
                              color: Colours.app_font_grey6,
                              fontSize: Adapt.font(28),
                            ),
                          ),
                          SizedBox(
                            width: Adapt.width(21),
                          ),
                          Image(
                            width: Adapt.width(32),
                            height: Adapt.width(32),
                            image: AssetImage("images/line_rightrow.png"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colours.app_bg_grey,
              height: 1,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.all(Adapt.width(30)),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("my_address");
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "收获地址",
                        style: TextStyle(fontSize: Adapt.font(28)),
                      ),
                      Row(
                        children: [
                          Text(
                            "修改、添加",
                            style: TextStyle(
                              color: Colours.app_font_grey6,
                              fontSize: Adapt.font(28),
                            ),
                          ),
                          SizedBox(
                            width: Adapt.width(21),
                          ),
                          Image(
                            width: Adapt.width(32),
                            height: Adapt.width(32),
                            image: AssetImage("images/line_rightrow.png"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colours.app_bg_grey,
              height: 1,
              width: double.infinity,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("language");
              },
              child: Padding(
                padding: EdgeInsets.all(Adapt.width(28)),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "多语言",
                        style: TextStyle(fontSize: Adapt.font(28)),
                      ),
                      Row(
                        children: [
                          Text(
                            "中文",
                            style: TextStyle(
                              color: Colours.app_font_grey6,
                              fontSize: Adapt.font(30),
                            ),
                          ),
                          SizedBox(
                            width: Adapt.width(21),
                          ),
                          Image(
                            width: Adapt.width(32),
                            height: Adapt.width(32),
                            image: AssetImage("images/line_rightrow.png"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: Adapt.height(60),
              color: Colours.app_bg_grey,
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return ArDialog(
                      type: "confirm",
                      content: "确认要退出账号吗？",
                      fn1: () {
                        Navigator.of(context).pop();
                      },
                      fn2: () {},
                    );
                  },
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: Adapt.height(100),
                color: Colors.white,
                child: Text(
                  "退出登录",
                  style: TextStyle(
                    fontSize: Adapt.font(30),
                    color: Colours.app_main,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _baseInfoPanel() {
    return Container(
      height: Adapt.height(411),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              showCupertinoModalPopup(
                context: context,
                builder: (BuildContext context) {
                  return CupertinoActionSheet(
                    actions: [
                      CupertinoActionSheetAction(
                        onPressed: () async {
                          Navigator.of(context).pop();
                          _openGallery();
                        },
                        child: Text(
                          "从手机相册选择",
                          style: TextStyle(
                            fontSize: Adapt.font(34),
                          ),
                        ),
                        isDefaultAction: true,
                      ),
                      CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.of(context).pop();
                          _takePhoto();
                        },
                        child: Text(
                          "拍照",
                          style: TextStyle(
                            fontSize: Adapt.font(34),
                          ),
                        ),
                        isDefaultAction: true,
                      )
                    ],
                    cancelButton: CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "取消",
                        style: TextStyle(
                          fontSize: Adapt.font(34),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: Image(
              width: Adapt.width(112),
              height: Adapt.height(112),
              image: AssetImage("images/my_avatar_default.png"),
            ),
          ),
          SizedBox(
            height: Adapt.height(40),
          ),
          Text(
            "130****5678",
            style: TextStyle(
              fontSize: Adapt.font(36),
              color: Colours.app_main,
            ),
          )
        ],
      ),
    );
  }

  /// 从相册选择照片
  _openGallery() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imgPath = image;
    });
  }

  /// 拍照
  _takePhoto() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      _imgPath = image;
    });
  }
}
