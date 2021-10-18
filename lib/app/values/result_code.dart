/// 应用未授权
const SERVICE_ERROR = 500;

/// 应用未授权
const APP_NOT_ACCREDIT = 10001;

/// 暂不支持该类型收费模式
const FEATURES_ARE_BEING_DEVELOPED = 10002;

/// 定位服务异常
const LOCATION_IS_CLOSE = 10003;

/// 手机号错误
const USER_PHONE_ERROR = 1001;

/// 此号码已被注册，去登录看看
const PHONE_NUMBER_HAS_BEEN_USED = 1002;

/// Token已失效
const ACCESS_TOKEN_EXPIRE = 1003;

/// 该帐号尚未注册
const ACCOUNT_UNREGISTERED = 1004;

/// 账号已存在
const ACCOUNT_IS_EXIST = 1005;

/// 账户已冻结
const ACCOUNT_HAS_BEEN_FROZEN = 1006;

/// 账号不存在
const ACCOUNT_DONT_EXISTS = 1007;

/// 身份证已使用
const ID_CARD_USED = 1008;

/// 未实名认证
const NO_REAL_NAME_AUTHENTICATION = 1009;

/// 账号或密码错误
const ACCOUNT_PASSWORD_ERROR = 1010;

/// 账户已登陆
const ACCOUNT_IS_LOGIN = 1011;

/// 无用户信息
const NOT_GET_USER_INFO = 1012;

/// 用户不属于该地区"
const NOT_GET_USER_INFO_ORGANID = 1013;

/// 没有当前的身份权限
const NO_CURRENT_IDENTITY_PERMISSIONS = 1014;

/// 未登录
const NOT_LOGIN_IN = 1015;

/// 当前密码输入错误
const PASSWORD_ERROR = 1016;

/// 两次输入新密码不一致
const CHECK_PASSWORD_ERROR = 1017;

/// 新密码与当前密码重复
const SAME_PASSWORD = 1018;

/// 请输入6-15位数字、字母的密码
const PASSWORD_IS_NOT_STANDARDIZED = 1019;

/// 用户未授权
const USER_NOT_AUTHORIZED = 1020;

/// 当前区域未开通换电服务
const EXCHANGE_SERVICE_IS_NOT_ACTIVATED = 2001;

/// 无订单记录
const NO_ORDER_INFORMATION = 2002;

/// 订单数据异常
const ABNORMAL_ORDER_DATA = 2003;

/// 不支持余额换电
const DO_NOT_SUPPORT_BALANCE_EXCHANGE = 2004;

/// 无充电收费标准
const NO_CHARGING_STANDARD_IS_SET = 2005;

/// 存在进行中充电订单
const AN_ORDER_FOR_CHARGING_IN_PROGRESS_EXISTS = 2006;

/// 存在进行中的换电订单
const EXCHANGE_BATTERY_ONGOING_ORDER = 2007;

/// 用户未开通当前地区换电服务
const UNPAY_CABINET_AREA_BATTERYRENT = 2008;

/// 未开通换电服务
const NONACTIVATED_EXCHANGE_SERVICE = 2009;

/// 用户无可用套餐且不支持单次余额换电
const PLEASE_PURCHASE_FREQUENCY_CARD = 2010;

/// 包月用户未购买合约套餐禁止单次余额换电
const NO_CONTRACT_PACKAGE_PURCHASED = 2011;

/// 套餐不存在
const NOT_FOUND_FREQUENCY_CARD = 3001;

/// 用户无生效中次卡
const FREQUENCY_CARD_NOT_EXIST_IN_EFFECT = 3002;

/// 次卡不匹配
const FREQUENCY_CARD_DO_NOT_MATCH = 3003;

/// 当前次卡不可升级
const THE_CURRENT_CARD_CANNOT_BE_UPGRADE = 3004;

/// 无可升级套餐数据
const NO_UPGRADE_FREQUENCY_CARD_DATA = 3005;

/// 套餐数据错误
const FREQUENCY_CARD_DATA_ERROR = 3006;

/// 电池类型未设置单次收费套餐
const EXISTED_CONTINUOUS_MONTHLY_FREQUENCY_CARD = 3007;

// 验证码错误
const INVALID_VERIFICATION_CODE = 8001;

// 验证码已过期
const VERIFICATION_CODE_HAS_EXPIRED = 8002;

// 操作超时请重新验证
const OPERATION_TIMED_OUT = 8003;

// 手机号格式错误，请重新输入
const PHONE_NUMBER_ERROR = 8004;

// 验证码获取次数超过当日限定
const EXCEED_THE_NUMBER_OF_TIMES_OF_THE_DAY = 8005;

/// 短信发送失败
const SEND_ERROR = 8006;

/// 机柜码错误
const CABINET_CODE_ERROR = 6001;

/// 机柜码已绑定
const CABINET_CODE_HAVE_BIND = 6002;

/// 扫描二维码无法识别
const QR_CODE_NOT_RECOGNIZED = 6003;

/// 电柜未开通
const CABINET_DONT_EXISTS = 6004;

/// 机柜不在附近
const CABINET_IS_NOT_NEARBY = 6005;

/// 暂无空仓
const NO_BOX_POSITION = 6006;

/// 机柜维护中
const CABINET_DISABLE = 6007;

/// 暂无满电仓
const NO_FULL_CHARGED_BOX = 6008;

/// 暂无满电池或空仓
const CABINET_TEMPORARY_DOES_NOT_SUPPORT_EXCHANGE = 6009;

/// 充电口繁忙
const CHARGING_PORT_BUSY = 6010;

/// 充电口已被预订
const CABINET_BOX_OCCUPY = 6011;

/// 机柜操作中
const CABINET_IN_USE = 6012;

/// 柜中无可用电池
const NO_USABLE_BATTERY_IN_CABINET = 6013;

/// 柜子仓门或者充电口不存在
const CABINET_BOX_NOT_EXIST = 6014;

/// 机柜繁忙
const CABINET_IS_BUSY = 6015;

/// 仓门状态错误
const CABINET_BOX_STATUS_ERROR = 6016;

/// 机柜升级中
const CABINET_UPGRADE = 6017;

/// 仓门已被禁用
const BOX_DISABLED = 6018;

/// 暂无可用充电口
const NO_CHARGING_PORT_AVAILABLE = 6019;

/// 不支持充电服务
const CHARGING_SERVICE_IS_NOT_CURRENTLY_SUPPORTED = 6020;

/// 电柜未入库
const CABINET_HAS_NOT_INCOME = 6021;

/// 机柜已入库
const CABINET_HAS_INCOME = 6022;

/// 机柜已被禁用
const CABINET_HAS_BEEN_DISABLE = 6023;

/// 仓门繁忙
const BOX_BUSY = 6024;

/// 仓门暂不可用
const BOX_IS_TEMPORARILY_UNAVAILABLE = 6025;

/// 电柜不可用，请联系管理员
const CABINET_NOT_APPLICABLE_CONTACT_ADMINISTRATOR = 6026; //"!"),
/// 机柜未分配至门店
const CABINET_NOT_ALLOCATED_TO_SHOP_BUSINESS = 6027; //""),
/// 暂不能使用换电服务，请先绑定车辆
const NO_VEHICLE_CAN_NOT_CHANGE_ELECTRIC = 6028; //""),

/// 设备码错误
const DEVICE_CODE_ERROR = 7001;

/// 设备码已绑定
const DEVICE_CODE_HAVE_BIND = 7002;

/// 设备不存在
const DEVICE_NOT_EXISTS = 7003;

/// 输入设备ID错误
const DEVICE_QR_CODE_DID_NOT_EXISTS = 7004;

/// 未绑定设备
const DEVICE_NOT_BIND = 7005;

/// 设备响应超时
const DEVICE_IS_BUSY = 7006;

/// 设备操作失败
const DEVICE_OPERATION_FAILED = 7007;

/// 设备离线
const DEVICE_OFF_LINE = 7008;

/// 设备、uqKey不匹配
const UQKEY_DOES_NOT_MATCH = 7009;

/// 支付异常
const WX_PAY_ERROR = 9001;

/// 不支持在线支付
const NOT_SUPPORT_ONLINE_PAY = 9002;

/// 钱包余额不足
const WALLET_BALANCE_NOT_ENOUGH = 9003;

/// 暂无可提现金额
const NO_MONEY_WITHDRAW = 9004;

/// 支付金额错误
const PAYMENT_AMOUNT_ERROR = 9005;

/// 收款账户数据错误
const ABNORMAL_COLLECTION_ACCOUNT_ERROR = 9006;

/// 账户已欠费
const ACCOUNT_OWED = 9007;

/// 退款异常
const REFUND_ERROR = 9008;

/// 电池信息不存在
const BATTERY_SN_NOT_FOUND = 40001;

/// 未绑定电池
const NOT_BIND_BATTERY = 40002;

/// 未领取电池
const NOT_GET_BATTERY_RECORD = 40003;

/// 电池SN码错误
const WRONG_BATTERY_BARCODE = 40004;

/// 电池类型不匹配
const BATTERY_TYPE_NOT_MATCH = 40005;

/// 电池已被绑定
const BATTERY_HAS_BIND = 40006;

/// 电池类型不存在
const BATTERY_TYPE_NOT_EXISTS = 40007;

/// 电池被吞
const BATTERY_IS_SWALLOWED = 40008;

/// 已绑定电池
const IS_ALREADY_BOUND_BATTERY = 40009;

/// 无电池锁定记录
const NO_LOCK_RECODE = 40010;

/// 机柜暂不可用，存在未识别电池，详情联系管理员
const BATTERY_INFO_ERROR = 40011;

/// 电池未入库
const BATTERY_HAS_NO_INCOME = 40012;

/// 用户未申请退电池
const DID_NOT_APPLY_FOR_BATTERY_RETURN = 40013;

/// 柜中可用电池类型不匹配
const CABINET_BATTERY_TYPE_NOT_MATCH = 40014;

/// 电池未激活
const BATTERY_IS_NOT_ACTIVATED = 40015;

/// 电池未绑定门店
const BATTERY_IS_NOT_UNBOUND_SHOP = 40016;

/// 无此电池操作权限
const NO_BATTERY_OPERATION_AUTHORITY = 40017;

/// 电池退还中
const BATTERY_REFUNDING = 40018;

/// 电池已入库
const BATTERY_HAS_INCOME = 40019;

/// 未绑定电池，暂不能使用换电服务
const NO_BATTERY_CAN_NOT_CHANGE_ELECTRIC = 40020;

/// 无此车辆信息，请检查后重新输入
const VEHICLE_NOT_EXIST = 130001;

/// 该车辆尚未入库，请先入库后再给用户绑定
const VEHICLE_HAS_NO_INCOME = 130002;

/// 车辆已被绑定，请检查后重新输入
const VEHICLE_HAS_BIND = 130003;

/// 未绑定车辆
const NOT_BIND_VEHICLE = 130004;

/// 用户已绑定车辆
const IS_ALREADY_BOUND_VEHICLE = 130005;

/// 无此车辆操作权限
const NO_VEHICLE_OPERATION_AUTHORITY = 130006;

/// 车辆已入库
const VEHICLE_HAS_INCOME = 130007;

/// 车辆未分配至门店
const VEHICLE_IS_NOT_ASSIGNED_TO_THE_STORE = 130008;

/// 该用户未绑定车辆，暂不能绑定套餐
const USERS_CANNOT_PURCHASE_PACKAGES_WITHOUT_VEHICLE = 130009;
