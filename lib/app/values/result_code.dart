///APP全局相关
const APP_NOT_ACCREDIT = 10001; // "应用未授权",
const FEATURES_ARE_BEING_DEVELOPED = 10002; // "暂不支持该类型收费模式!",
const LOCATION_IS_CLOSE = 10003; //"定位服务异常",

const USER_PHONE_ERROR = 1001; //"手机号错误";
const PHONE_NUMBER_HAS_BEEN_USED = 1002; //"此号码已被注册，去登录看看";
const ACCESS_TOKEN_EXPIRE = 1003; //"Token已失效";
const ACCOUNT_UNREGISTERED = 1004; //"该帐号尚未注册";
const ACCOUNT_IS_EXIST = 1005; //"账号已存在";
const ACCOUNT_HAS_BEEN_FROZEN = 1006; //"账户已冻结";
const ACCOUNT_DONT_EXISTS = 1007; //"账号不存在";
const ID_CARD_USED = 1008; //"身份证已使用";
const NO_REAL_NAME_AUTHENTICATION = 1009; //"未实名认证";
const ACCOUNT_PASSWORD_ERROR = 1010; //"账号或密码错误";
const ACCOUNT_IS_LOGIN = 1011; //"账户已登陆";
const NOT_GET_USER_INFO = 1012; //"无用户信息";
const NOT_GET_USER_INFO_ORGANID = 1013; //"用户不属于该地区";
const NO_CURRENT_IDENTITY_PERMISSIONS = 1014; //"没有当前的身份权限";
const NOT_LOGIN_IN = 1015; //"未登录";
const PASSWORD_ERROR = 1016; //"当前密码输入错误";
const CHECK_PASSWORD_ERROR = 1017; //"两次输入新密码不一致";
const SAME_PASSWORD = 1018; //"新密码与当前密码重复";
const PASSWORD_IS_NOT_STANDARDIZED = 1019; //"请输入6-15位数字、字母的密码";
const USER_NOT_AUTHORIZED = 1020; //"用户未授权";

/// 充换电服务相关
const EXCHANGE_SERVICE_IS_NOT_ACTIVATED = 2001; //"当前区域未开通换电服务";
const NO_ORDER_INFORMATION = 2002; //"无订单记录";
const ABNORMAL_ORDER_DATA = 2003; //"订单数据异常";
const DO_NOT_SUPPORT_BALANCE_EXCHANGE = 2004; //"不支持余额换电";
const NO_CHARGING_STANDARD_IS_SET = 2005; //"无充电收费标准";
const AN_ORDER_FOR_CHARGING_IN_PROGRESS_EXISTS = 2006; //"存在进行中充电订单";
const EXCHANGE_BATTERY_ONGOING_ORDER = 2007; //"存在进行中的换电订单";
const UNPAY_CABINET_AREA_BATTERYRENT = 2008; //"用户未开通当前地区换电服务";
const NONACTIVATED_EXCHANGE_SERVICE = 2009; //"未开通换电服务";
const PLEASE_PURCHASE_FREQUENCY_CARD = 2010; //"用户无可用套餐且不支持单次余额换电";
const NO_CONTRACT_PACKAGE_PURCHASED = 2011; //"包月用户未购买合约套餐禁止单次余额换电";

/// 套餐相关
const NOT_FOUND_FREQUENCY_CARD = 3001; //"套餐不存在";
const FREQUENCY_CARD_NOT_EXIST_IN_EFFECT = 3002; //"用户无生效中次卡";
const FREQUENCY_CARD_DO_NOT_MATCH = 3003; //"次卡不匹配";
const THE_CURRENT_CARD_CANNOT_BE_UPGRADE = 3004; //"当前次卡不可升级";
const NO_UPGRADE_FREQUENCY_CARD_DATA = 3005; //"无可升级套餐数据";
const FREQUENCY_CARD_DATA_ERROR = 3006; //"套餐数据错误";
const EXISTED_CONTINUOUS_MONTHLY_FREQUENCY_CARD = 3007; //"电池类型未设置单次收费套餐";

// 短信验证码相关
const INVALID_VERIFICATION_CODE = 8001; //验证码错误
const VERIFICATION_CODE_HAS_EXPIRED = 8002; //验证码已过期
const OPERATION_TIMED_OUT = 8003; //操作超时请重新验证
const PHONE_NUMBER_ERROR = 8004; //手机号格式错误，请重新输入
const EXCEED_THE_NUMBER_OF_TIMES_OF_THE_DAY = 8005; //验证码获取次数超过当日限定
const SEND_ERROR = 8006;//短信发送失败