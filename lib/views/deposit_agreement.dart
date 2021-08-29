/*
 * @Author: Arsize 
 * @Date: 2021-08-24 16:09:58 
 * @Describe: 充值协议
 */

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/widgets/common/app_bar.dart';

class DepositAgreement extends StatelessWidget {
  const DepositAgreement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        context,
        title: "充值协议",
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(Adapt.width(32)),
          color: Colors.white,
          child: Html(
              data:
                  "用户在使用技术开发方（即，以下统称“技术开发方”）提供的各项服务之前，应仔细阅读本《用户协议》（以下简称“本协议”）。<br /><br />用户一旦登录或使用技术开发方的服务，即视为用户已了解并明示同意本协议各项内容，本协议立即在用户与本技术开发方之间产生法律效力。<br /><br />用户登录、使用本产品服务的全部活动将受到本协议的约束并承担相应的责任和义务。如用户不同意本协议任何内容的，请用户立即停止使用技术开发方所提供的全部服务。 <br /><br />根据《中华人民共和国网络安全法》、《电信和互联网用户个人信息保护规定》及相关法律法规的规定，同时依据技术开发方与其合作伙伴之间的相关协议，用户必须已明示授权技术开发方合作伙伴（以下简称“合作伙伴”）、在此明示授权并委托技术开发方及其关联公司通过官方或相关实名认证平台、信用信息平台（包括但不限于：征信机构、银行信用信息平台、网络借贷平台、消费金融平台、第三方支付平台、公积金平台、投资理财平台等）及其它相关平台查询、验证、存储用户的个人信用信息，并输出给合作伙伴对用户的个人信用进行评估与参考使用。<br /><br />用户理解并同意，具体的授权查询、验证、存储及输出的内容以合作伙伴要求查询、验证、存储、输出以及技术开发方及其关联公司实际查询、验证、存储、输出的信息为准。"),
        ),
      ),
    );
  }
}
