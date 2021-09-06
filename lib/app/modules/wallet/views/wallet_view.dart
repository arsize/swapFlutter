import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/wallet_controller.dart';

class WalletView extends GetView<WalletController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WalletView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'WalletView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
