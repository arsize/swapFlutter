// 扩展

import 'package:swapapp/app/utils/adapt.dart';

extension SizeFit on num {
  double get w => Adapt.width(this.toDouble());
  double get h => Adapt.height(this.toDouble());
  double get f => Adapt.font(this.toDouble());
}
