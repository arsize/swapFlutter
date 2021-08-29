/*
 * @Author: Arsize 
 * @Date: 2021-08-25 11:22:21 
 * @Describe: 用户登录
 */
import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/utils/arutil.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<int> list = [];
  late ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    for (var i = 0; i < 10; i++) {
      list.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colours.app_main,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.only(
          left: Adapt.width(30),
          right: Adapt.width(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              width: Adapt.width(454),
              height: Adapt.width(62),
              image: AssetImage("images/home_logo_gray.png"),
            ),
            SizedBox(
              height: Adapt.height(42),
            ),
            Text(
              "欢迎使用",
              style: TextStyle(
                fontSize: Adapt.font(36),
                fontWeight: FontWeight.w500,
                color: Colours.app_main,
              ),
            ),
            SizedBox(
              height: Adapt.height(100),
            ),
            Center(
              child: _inputMobile(),
            ),
            SizedBox(
              height: Adapt.height(30),
            ),
            Center(
              child: _inputPassWd(),
            ),
            SizedBox(
              height: Adapt.height(80),
            ),
            Center(
              child: _planHeadBtn(),
            ),
            SizedBox(
              height: Adapt.height(30),
            ),
            Row(
              children: [
                InkWell(
                  child: Text(
                    "注册账号",
                    style: TextStyle(color: Colours.app_green),
                  ),
                  onTap: () => {
                    Navigator.of(context).pushNamed('registry'),
                  },
                ),
                Text(
                  "忘记密码",
                  style: TextStyle(color: Colours.app_green),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ],
        ),
      ),
    );
  }

  // 输入用户名
  _inputMobile() {
    return Container(
      width: Adapt.width(690),
      height: Adapt.width(96),
      decoration: BoxDecoration(
        borderRadius: ArUtil.border(12),
        color: Colours.app_FA_grey,
      ),
      child: Container(
        padding: EdgeInsets.only(left: Adapt.width(30)),
        child: Row(
          children: [
            InkWell(
              child: Row(
                children: [
                  Text("+86"),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              onTap: () => {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  builder: (BuildContext context) {
                    return Container(
                      height: 250,
                      child: ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(Adapt.width(30)),
                            child: Text(
                              "中国大陆（+86）",
                              style: TextStyle(
                                color: Colours.app_font_grey6,
                                fontSize: 16,
                              ),
                            ),
                          );
                        },
                        itemCount: list.length,
                        controller: _controller,
                      ),
                    );
                  },
                )
              },
            ),
            SizedBox(
              width: Adapt.width(16),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "请输入用户名",
                  border: InputBorder.none,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // 输入密码
  _inputPassWd() {
    return Container(
      width: Adapt.width(690),
      height: Adapt.width(96),
      decoration: BoxDecoration(
        borderRadius: ArUtil.border(12),
        color: Colours.app_FA_grey,
      ),
      child: Container(
        padding: EdgeInsets.only(left: Adapt.width(30)),
        child: Row(
          children: [
            Icon(
              Icons.lock_outline,
              size: Adapt.width(44),
            ),
            SizedBox(
              width: Adapt.width(70),
            ),
            Expanded(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "请输入密码",
                  border: InputBorder.none,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // 登录按钮
  _planHeadBtn() {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          Size(
            Adapt.width(690),
            Adapt.height(96),
          ),
        ),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: 18,
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          return Colours.app_main;
        }),
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) => Colours.app_text_light,
        ),
      ),
      onPressed: () {},
      child: Text(
        "登录",
        style: TextStyle(fontSize: Adapt.font(32)),
      ),
    );
  }
}
