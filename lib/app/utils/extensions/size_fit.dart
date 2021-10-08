// 扩展

import 'package:raintree/app/utils/adapt.dart';

extension SizeFit on num {
  double get w => Adapt.width(toDouble());
  double get h => Adapt.height(toDouble());
  double get f => Adapt.font(toDouble());
}
