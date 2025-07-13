class EndPoint {
///baseurl
  static String baseUrl = "http://78.89.159.126:9393/TheOneLahjAPI/api/";
///auth
  static String login="${baseUrl}Customer/Login";
  static String signup="${baseUrl}Customer/AddCustomer";
  static String phone="${baseUrl}Customer/AddCustomer";
  static String changePass="${baseUrl}Customers/ForgetPassword?CustomerPhone=";
  static String changePassconfirm="${baseUrl}Customer/ChangePassword?CustomerPhone=";

  ///categories
  static String categories="${baseUrl}AdvertisementGroups";
  static String addvertisminteall="${baseUrl}Advertisements";
  static String getAdvertisementsById="${baseUrl}Advertisements/";
  static String getAdvertisementsByGroupID="${baseUrl}Advertisements/GetAdvertisementsByGroupID/";
  /// data
  static String currency="${baseUrl}Currencies";
  static String government="${baseUrl}Governorates";



}