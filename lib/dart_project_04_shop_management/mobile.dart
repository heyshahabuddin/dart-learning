class Mobile{
  String mobileName;
  String mobileBrand;
  String mobileModel;
  String mobileColor;
  String mobileStorage;
  String mobileRam;
  String mobileCamera;
  String mobileBattery;
  String mobileProcessor;
  String mobileDisplayType;
  String mobileDisplaySize;
  String mobileOs;
  String mobileSimType;
  String mobileNetworkType;
  String mobileWarranty;
  String mobileReleaseDate;
  String mobileImageUrl;
  String mobileDescription;
  double mobilePrice;
  int mobileStock;
  String mobileIMEIcode;

  // Constructor with named parameters
  Mobile({
    this.mobileName = 'Unknown',  // required named parameter can't have a default value, we can set a default value for optional named parameters. By default, named parameters are optional.
    required this.mobileBrand,
    required this.mobileModel, // Name parameters can be required or optional. A named parameter can't have null value, so it must be marked as required.
    required this.mobileColor,
    required this.mobileStorage,
    required this.mobileRam,
    required this.mobileCamera,
    required this.mobileBattery,
    required this.mobileProcessor,
    required this.mobileDisplayType,
    required this.mobileDisplaySize,
    required this.mobileOs,
    required this.mobileSimType,
    required this.mobileNetworkType,
    required this.mobileWarranty,
    required this.mobileReleaseDate,
    required this.mobileImageUrl,
    required this.mobileDescription,
    required this.mobilePrice,
    required this.mobileStock,
    required this.mobileIMEIcode
  });
}