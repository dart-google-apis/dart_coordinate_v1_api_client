library coordinate_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_coordinate_v1_api/src/console_client.dart';

import "package:google_coordinate_v1_api/coordinate_v1_api_client.dart";

/** Lets you view and manage jobs in a Coordinate team. */
@deprecated
class Coordinate extends Client with ConsoleClient {

  /** OAuth Scope2: View and manage your Google Maps Coordinate jobs */
  static const String COORDINATE_SCOPE = "https://www.googleapis.com/auth/coordinate";

  /** OAuth Scope2: View your Google Coordinate jobs */
  static const String COORDINATE_READONLY_SCOPE = "https://www.googleapis.com/auth/coordinate.readonly";

  final oauth2.OAuth2Console auth;

  Coordinate([oauth2.OAuth2Console this.auth]);
}
