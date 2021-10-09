import 'package:get/get.dart';
import 'package:raintree/app/values/common_problem.dart';

class CustomerServiceController extends GetxController {
  var problem = [].obs;

  @override
  void onInit() {
    super.onInit();
    for (var item in commonProblem) {
      problem.add(item);
    }
  }

  @override
  void onClose() {}

  changeProblem() {
    problem.shuffle();
    print(problem);
    print("zheli");
    update();
  }
}
