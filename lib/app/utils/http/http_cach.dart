class Incomplete {
  static Incomplete? _instance;
  List<Function> cach = [];

  Incomplete._internal() {
    _instance = this;
  }

  factory Incomplete() => _instance ?? Incomplete._internal();

  void pushCach(Function fn) {
    this.cach.add(fn);
  }

  void clearCach() {
    this.cach = [];
  }

  void removeCach() {}

  // 执行
  void run() {
    print("cach run");
  }
}
