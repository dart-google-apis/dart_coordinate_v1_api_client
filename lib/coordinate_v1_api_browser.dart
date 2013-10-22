library coordinate_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_coordinate_v1_api/src/browser_client.dart';
import "package:google_coordinate_v1_api/coordinate_v1_api_client.dart";

/** Lets you view and manage jobs in a Coordinate team. */
class Coordinate extends Client with BrowserClient {

  /** OAuth Scope2: View and manage your Google Maps Coordinate jobs */
  static const String COORDINATE_SCOPE = "https://www.googleapis.com/auth/coordinate";

  /** OAuth Scope2: View your Google Coordinate jobs */
  static const String COORDINATE_READONLY_SCOPE = "https://www.googleapis.com/auth/coordinate.readonly";

  final oauth.OAuth2 auth;

  Coordinate([oauth.OAuth2 this.auth]);
}
