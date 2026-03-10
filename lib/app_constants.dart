import 'presentation/app_assets.dart';

abstract class AppConstants {
  AppConstants._();

  static const String _defaultBaseUrl = 'https://api.tynk-tech.nl/';
  static const String _defaultWebUrl = 'https://express.tynk-tech.nl/';
  static const String _defaultAdminUrl = 'https://admin.tynk-tech.nl/';
  static const String _defaultDeepLinkHost = 'express.tynk-tech.nl';
  static const String _defaultGoogleMapsApiKey =
    'AIzaSyAo0EDk5sxDGBm7IXHDyEnNLVHIQtwsaRk';
  static const String _defaultFirebaseWebKey =
    'AIzaSyCjG9NvIBLHJivpLFXdTD3SzGEMwbWYM8Y';
  static const String _defaultRoutingBaseUrl =
    'https://api.openrouteservice.org/';

  static const bool isDemo = false;
  static const bool autoTrn = true;
  static const bool shopBadge = true;
  static const bool enableGame = true;

  static const bool isPhoneFirebase = true;
  static const int cacheSize = 1920;

  /// api urls
  static const String baseUrl = String.fromEnvironment(
    'BASE_URL',
    defaultValue: _defaultBaseUrl,
  );
  static const String webUrl = String.fromEnvironment(
    'WEB_URL',
    defaultValue: _defaultWebUrl,
  );
  static const String adminPageUrl = String.fromEnvironment(
    'ADMIN_URL',
    defaultValue: _defaultAdminUrl,
  );
  static const String wsBaseUrl = String.fromEnvironment(
    'WS_BASE_URL',
    defaultValue: '',
  );
  static const String wsSecret = String.fromEnvironment(
    'WS_SECRET',
    defaultValue: '',
  );
  static const String googleApiKey = String.fromEnvironment(
    'GOOGLE_MAPS_API_KEY',
    defaultValue: _defaultGoogleMapsApiKey,
  );
  static const String firebaseWebKey = String.fromEnvironment(
    'FIREBASE_API_KEY',
    defaultValue: _defaultFirebaseWebKey,
  );
  static const String routingBaseUrl = String.fromEnvironment(
    'ROUTING_API',
    defaultValue: _defaultRoutingBaseUrl,
  );
  static const String routingKey = String.fromEnvironment(
    'ROUTING_KEY',
    defaultValue: 'Routing_Key',
  );
  static const String deepLinkHost = String.fromEnvironment(
    'DEEP_LINK_URL',
    defaultValue: _defaultDeepLinkHost,
  );

  // PayFast
  static const String passphrase = String.fromEnvironment(
    'PAYFAST_PASSPHRASE',
    defaultValue: 'PASSPHRASE',
  );
  static const String merchantId = String.fromEnvironment(
    'PAYFAST_MERCHANT_ID',
    defaultValue: 'MERCHANT_ID',
  );
  static const String merchantKey = String.fromEnvironment(
    'PAYFAST_MERCHANT_KEY',
    defaultValue: 'MERCHANT_KEY',
  );

  /// auth phone fields
  static const bool isNumberLengthAlwaysSame = true;
  static String countryCodeISO = 'NL';
  static const bool showFlag = true;
  static const bool showArrowIcon = true;

  static const double radius = 12;
  static const double radiusMax = 20;

  /// location
  static const double demoLatitude = 52.3676;
  static const double demoLongitude = 4.9041;
  static const double pinLoadingMin = 0.116666667;
  static const double pinLoadingMax = 0.611111111;

  ///refresh duration
  static const Duration timeRefresh = Duration(seconds: 30);

  ///image
  static const String darkBgChat = Assets.imagesDarkBg;
  static const String lightBgChat = Assets.imagesLightBg;

  static const String newMessage = "new_message";
}
