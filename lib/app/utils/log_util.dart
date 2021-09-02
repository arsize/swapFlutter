import 'dart:developer';

/**
 * @Author: Sky24n
 * @GitHub: https://github.com/Sky24n
 * @Description: Log Util.
 * @Date: 2018/9/29
 */

class LogUtil {
  static const String _defTag = 'common_utils';
  static bool _debugMode = false; //是否是debug模式,true: log v 不输出.
  static int _maxLen = 128;

  static void init({
    String tag = _defTag,
    bool isDebug = false,
    int maxLen = 128,
  }) {
    _debugMode = isDebug;
    _maxLen = maxLen;
  }

  static void d(Object object, {required String tag}) {
    if (_debugMode) {
      log('$tag d | ${object.toString()}');
    }
  }

  static void e(Object object, {required String tag}) {
    _printLog(tag, ' e ', object);
  }

  static void v(Object object, {required String tag}) {
    if (_debugMode) {
      _printLog(tag, ' v ', object);
    }
  }

  static void _printLog(String tag, String stag, Object object) {
    String da = object.toString();
    tag = tag;
    if (da.length <= _maxLen) {
      print('$tag$stag $da');
      return;
    }
    print(
        '$tag$stag — — — — — — — — — — — — — — — — st — — — — — — — — — — — — — — — —');
    while (da.isNotEmpty) {
      if (da.length > _maxLen) {
        print('$tag$stag| ${da.substring(0, _maxLen)}');
        da = da.substring(_maxLen, da.length);
      } else {
        print('$tag$stag| $da');
        da = '';
      }
    }
    print(
        '$tag$stag — — — — — — — — — — — — — — — — ed — — — — — — — — — — — — — — — —');
  }
}
